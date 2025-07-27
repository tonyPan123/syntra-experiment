import matplotlib.pyplot as plt


def plot(n):
    c = 4 * (2 ** n)
    f1 = [c]
    f2 = [0]

    for t in range(1000):
        c1 = f1[-1]
        c2 = f2[-1]

        if(c1 + c2 >= c):
            if(c2 > 0):
                f1.append(c1 + 1)
                f2.append(int(c2/2))
            else:
                assert c2 == 0
                f1.append(int(c1/2))
                f2.append(1)
        else:
            f1.append(c1 + 1)
            f2.append(c2 + 1)

    # import ipdb; ipdb.set_trace()

    fig, ax = plt.subplots()
    xx = range(len(f1))
    ax.plot(xx, f1, label='f1')
    ax.plot(xx, f2, label='f2')
    ax.legend()

    ax.set_xlabel('Time [RTT]')
    ax.set_ylabel('Cwnd')

    fig.tight_layout()
    fig.savefig(f'tmp/aimd_{n}.svg')

if __name__ == '__main__':
    for n in range(4, 11):
        plot(n)
