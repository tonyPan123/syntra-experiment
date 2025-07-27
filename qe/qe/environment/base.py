import numpy as np
from dataclasses import dataclass
import pandas as pd
import z3
from qe.util import get_model_value_list, get_name_for_list, get_names, get_raw_value


class BaseEnvironment:

    @dataclass
    class Config:
        T: int = 5
        R: int = 1
        N: int = 1

        infinite_buffer: bool = False

        use_loss_detect: bool = False

        use_ecn: bool = False
        ecn_k: int = 100

    @dataclass
    class Objectives:
        f_util: float = 1

    class Variables:
        def __init__(self, name: str, c):
            assert isinstance(c, BaseEnvironment.Config)
            self.A = [z3.Real(f'{name}A_{t}') for t in range(c.T)]
            self.I = [z3.Real(f'{name}I_{t}') for t in range(c.T)]  # service curve of ideal link
            self.S = [z3.Real(f'{name}S_{t}') for t in range(c.T)]
            self.L = [z3.Real(f'{name}L_{t}') for t in range(c.T)]
            self.L0 = z3.Real(f'{name}L0')
            self.Q = [z3.Real(f'{name}Q_{t}') for t in range(c.T)]  # This is unused.
            self.C = z3.Real(f'{name}C')
            self.B = z3.Real(f'{name}B')  # buffer size
            # self.a = 1  # z3.Real(f'{name}a')  # pkt size
            self.a = z3.Real(f'{name}a')  # pkt size
            # self.BbyC = z3.Real(f'{name}BbyC')

            if c.N > 1:
                self.Af = [
                    [z3.Real(f"{name}Af_{n}_{t}") for t in range(c.T)]
                    for n in range(c.N)
                ]
                self.Lf = [
                    [z3.Real(f"{name}Lf_{n}_{t}") for t in range(c.T)]
                    for n in range(c.N)
                ]
                self.If = [
                    [z3.Real(f"{name}Sf_{n}_{t}") for t in range(c.T)]
                    for n in range(c.N)
                ]
                self.Sf = [
                    [z3.Real(f"{name}Sf_{n}_{t}") for t in range(c.T)]
                    for n in range(c.N)
                ]

            if(c.use_loss_detect):
                if c.N > 1:
                    self.Ldf = [
                        [z3.Real(f"{name}Ldf_{n}_{t}") for t in range(c.T)]
                        for n in range(c.N)
                    ]
                else:
                    self.Ld = [z3.Real(f'{name}Ld_{t}') for t in range(c.T)]

            if c.use_ecn:
                self.ecn = [z3.Bool(f"{name}ecn_{t}") for t in range(c.T)]

    class Constraints:
        def multiflow_initial(self, c, v):
            assert isinstance(c, BaseEnvironment.Config)
            assert isinstance(v, BaseEnvironment.Variables)

            if c.N == 1:
                return []

            cl = []
            for n in range(c.N):
                for t in range(c.T):
                    cl.append(v.Lf[n][t] >= 0)
            return cl

        def multiflow_sum(self, c, v):
            assert isinstance(c, BaseEnvironment.Config)
            assert isinstance(v, BaseEnvironment.Variables)

            if c.N == 1:
                return []

            cl = []
            for t in range(c.T):
                cl.append(v.A[t] == sum([v.Af[n][t] for n in range(c.N)]))
                cl.append(v.L[t] == sum([v.Lf[n][t] for n in range(c.N)]))
                cl.append(v.S[t] == sum([v.Sf[n][t] for n in range(c.N)]))
                cl.append(v.I[t] == sum([v.If[n][t] for n in range(c.N)]))

            return cl

        def multiflow_monotonic(self, c, v):

            if c.N == 1:
                return []

            cl = []
            for n in range(c.N):
                for t in range(1, c.T):
                    # cl.append(v.Af[n][t] >= v.Af[n][t - 1])
                    # Already there due to non_dec_arrival
                    cl.append(v.Lf[n][t] >= v.Lf[n][t - 1])
                    cl.append(
                        v.Af[n][t] - v.Lf[n][t] >= v.Af[n][t - 1] - v.Lf[n][t - 1]
                    )
                    cl.append(v.Sf[n][t] >= v.Sf[n][t - 1])
                    cl.append(v.If[n][t] >= v.If[n][t - 1])

            return cl

        def multiflow_fifo(self, c, v):
            assert isinstance(c, BaseEnvironment.Config)
            assert isinstance(v, BaseEnvironment.Variables)

            if c.N == 1:
                return []

            cl = []
            for i in range(c.N):
                for j in range(c.N):
                    for t1 in range(c.T):
                        for t2 in range(t1 + 1, c.T):
                            cl.append(
                                z3.Implies(
                                    v.Af[i][t1] - v.Lf[i][t1] < v.If[i][t2],
                                    v.Af[j][t1] - v.Lf[j][t1] <= v.If[j][t2],
                                )
                            )

            return cl

    @staticmethod
    def get_cex_df(c, v, m: z3.ModelRef):
        assert isinstance(c, BaseEnvironment.Config)
        assert isinstance(v, BaseEnvironment.Variables)

        vl = [x for x in v.__dict__.values() if isinstance(x, list) and isinstance(x[0], z3.ExprRef)]
        frame = {get_name_for_list(get_names(x)): get_model_value_list(m, x) for x in vl}
        df = pd.DataFrame(frame)

        # import ipdb; ipdb.set_trace()
        s = get_name_for_list(get_names(v.S))
        a = get_name_for_list(get_names(v.A))
        i = get_name_for_list(get_names(v.I))
        l = get_name_for_list(get_names(v.L))
        # df['A-L_t'] = df[a] - df[l]
        # df['ddtS_t'] = df[s] - df[s].shift(1, fill_value=np.nan)
        df['Q_t'] = df[a] - df[l] - df[i]
        # df['IF_t'] = df[a] - df[l] - df[s]
        # df['I-S_t'] = df[i] - df[s]

        if c.N > 1:
            for n in range(c.N):
                df[f"Af_{n}"] = get_model_value_list(m, v.Af[n])
                df[f"Lf_{n}"] = get_model_value_list(m, v.Lf[n])
                df[f"Ldf_{n}"] = get_model_value_list(m, v.Ldf[n])
                df[f"If_{n}"] = get_model_value_list(m, v.If[n])
                df[f"Sf_{n}"] = get_model_value_list(m, v.Sf[n])

        return df

    @staticmethod
    def get_str(c, v, m: z3.ModelRef):
        assert isinstance(c, BaseEnvironment.Config)
        assert isinstance(v, BaseEnvironment.Variables)

        vc = [x for x in v.__dict__.values() if isinstance(x, z3.ExprRef)]
        sl = [f"{x.decl().name()}={float(get_raw_value(m.eval(x)))}" for x in vc]
        df = BaseEnvironment.get_cex_df(c, v, m)
        return (", ".join(sl) + "\n" + str(df))
