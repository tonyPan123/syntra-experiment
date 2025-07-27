import os
import sys
from typing import Dict, List
import pandas as pd
import math
import matplotlib.pyplot as plt
import numpy as np


def create_plot(root: str, files: List[str]):
    dfs: Dict[str, pd.DataFrame] = {}
    for file in files:
        if not file.endswith(".csv"):
            continue
        df = pd.read_csv(os.path.join(root, file))
        dfs[file] = df

    n = len(dfs)
    if n == 0:
        return

    n_float = float(n)
    xdim = math.ceil(math.sqrt(n_float))
    ydim = math.ceil(n_float / xdim)

    fig, axes = plt.subplots(
        xdim, ydim, sharex=True, sharey=True, figsize=(10, 10), constrained_layout=True
    )
    if (isinstance(axes, plt.Axes)):
        axes = np.array([axes])

    flat_axes = axes.flatten()
    for i, (file, df) in enumerate(sorted(dfs.items())):
        # this_x = i / xdim
        # this_y = i % xdim
        ax = flat_axes[i]
        a_rate = df["a"] - df["a"].shift(1, fill_value=0)
        s_rate = df["s"] - df["s"].shift(1, fill_value=0)
        ld_rate = df["ld"] - df["ld"].shift(1, fill_value=0)
        # q = df["a"] - df["ld"] - df["s"]
        assert a_rate.all() == df["r"].all()
        ax.plot(df["r"], label="ddt A")
        ax.plot(ld_rate, label="ddt Ld")
        ax.plot(s_rate, label="ddt S")
        # ax.plot(q, label="q")
        ax.plot(df['min_c'], label="min_c")
        # ax.plot(df['max_c'], label="max_c")
        # ax.plot(df['min_b'], label="min_b")
        # ax.plot(df['max_b'], label="max_b")
        # ax.plot(df['min_if'], label="min_if")
        # ax.plot(df['max_if'], label="max_if")
        ax.plot(df['min_q'], label="min_q")
        ax.plot(df['max_q'], label="max_q")
        ax.set_title(file)
        ax.set_xlabel("time [rtprop]")
        ax.set_ylabel("[bytes, bytes/rtprop]")

    for ax in axes.flat:
        ax.grid()
        ax.label_outer()
    flat_axes[0].legend()
    # fig.tight_layout(pad=1)
    exp = os.path.basename(root)
    fig.suptitle(exp)
    # plt.show()
    fig.savefig(os.path.join(root, f"{exp}.pdf"))


if __name__ == "__main__":
    dir = sys.argv[1]
    for root, dirs, files in os.walk(dir):
        create_plot(root, files)
