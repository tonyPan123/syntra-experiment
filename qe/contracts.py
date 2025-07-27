import matplotlib.pyplot as plt
import numpy as np
import os

SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
OUTPUT_DIR = os.path.join(SCRIPT_DIR, 'outputs/contracts')

contracts = [
    {
        'name': '-log(d)',
        'rate': lambda x: 100/np.log(10**4) * np.log(100/x)
    },
    {
        'name': 'exp(-d)',
        'rate': lambda x: 100 * np.exp(0.01) * np.exp(-x)
    },
    {
        'name': 'swift: 1/sqrt(d)',
        'rate': lambda x: 10/np.sqrt(x)
    },
    {
        'name': 'copa: 1/d',
        'rate': lambda x: 1/x
    },
    {
        'name': '-d',
        'rate': lambda x: 101-x
    },
]

# Same ratio, but changing difference

# Same difference, but changing ratio

def plot_contracts():
    fig, ax = plt.subplots()
    d = np.linspace(0.01, 100, 100)
    for contract in contracts:
        r = contract['rate'](d)
        plt.plot(d, r, label=contract['name'])

    ax.legend()
    ax.set_xlabel('d')
    ax.set_ylabel('rate')
    plt.show()

# Ratio of rates:
def rdiff_same_dratio_diff_abs():
    dratio = np.linspace(0.1, 1, 10)
    fig, ax = plt.subplots(len(dratio), 1, sharex=True, figsize=(10, 3 * len(dratio)))
    for i, dr in enumerate(dratio):
        d1 = np.linspace(0.01, 100, 100)
        d2 = dr * d1
        for contract in contracts:
            r1 = contract['rate'](d1)
            r2 = contract['rate'](d2)
            rdiff = r2 - r1
            ax[i].plot(d1, rdiff, label=contract['name'] + f', dratio={dr}')

        ax[i].legend()
        ax[i].set_xlabel('d bigger')
        ax[i].set_ylabel('rdiff')
        # ax.set_ylim(-0.1, 1.1)
        ax[i].grid(True)
        ax[i].label_outer()
    fig.tight_layout()
    fig.suptitle('Rate diff. Vary delay ratio at different absolute delays')
    fig.savefig(os.path.join(OUTPUT_DIR, 'rdiff_same_dratio_diff_abs.pdf'))

# Same difference at different absolute values
def rdiff_same_ddiff_diff_abs():
    # ddiff = np.linspace(0.1, 10, 10)
    ddiff = np.linspace(0.01, 100, 10)
    fig, ax = plt.subplots(len(ddiff), 1, sharey=True, sharex=True, figsize=(10, 3 * len(ddiff)))
    for i, dd in enumerate(ddiff):
        # print(i, dd)
        d1 = np.linspace(0.01, 90, 100)
        d2 = d1 + dd
        for contract in contracts:
            r1 = contract['rate'](d1)
            r2 = contract['rate'](d2)
            rdiff = r1 - r2
            ax[i].plot(d1, rdiff, label=contract['name'] + f', ddiff={dd}')

        ax[i].legend()
        ax[i].set_xlabel('d smaller')
        ax[i].set_ylabel('rdiff')
        # ax.set_ylim(-0.1, 1.1)
        # ax.set_yscale('log')
        ax[i].grid(True)
        ax[i].label_outer()
    fig.tight_layout()
    fig.suptitle('Rate difference. Vary delay difference at different absolute delays')
    fig.savefig(os.path.join(OUTPUT_DIR, 'rdiff_same_ddiff_diff_abs.pdf'))

# Ratio of rates:
def rratio_same_dratio_diff_abs():
    dratio = np.linspace(0.1, 1, 10)
    fig, ax = plt.subplots(len(dratio), 1, sharey=True, sharex=True, figsize=(10, 3 * len(dratio)))
    for i, dr in enumerate(dratio):
        d1 = np.linspace(0.01, 100, 100)
        d2 = dr * d1
        for contract in contracts:
            r1 = contract['rate'](d1)
            r2 = contract['rate'](d2)
            rratio = r1/r2
            ax[i].plot(d1, rratio, label=contract['name'] + f', dratio={dr}')

        ax[i].legend()
        ax[i].set_xlabel('d bigger')
        ax[i].set_ylabel('rratio')
        # ax[i].set_ylim(-0.1, 1.1)
        ax[i].grid(True)
        ax[i].label_outer()
    fig.tight_layout()
    fig.suptitle('Rate ratio. Vary delay ratio at different absolute delays')
    fig.savefig(os.path.join(OUTPUT_DIR, 'rratio_same_dratio_diff_abs.pdf'))


# Same difference at different absolute values
def rratio_same_ddiff_diff_abs():
    ddiff = np.linspace(0.1, 10, 10)
    fig, ax = plt.subplots(len(ddiff), 1, sharey=True, sharex=True, figsize=(10, 3 * len(ddiff)))
    for i, dd in enumerate(ddiff):
        d1 = np.linspace(0.01, 90, 100)
        d2 = d1 + dd
        for contract in contracts:
            r1 = contract['rate'](d1)
            r2 = contract['rate'](d2)
            rratio = r2/r1
            ax[i].plot(d1, rratio, label=contract['name'] + f', ddiff={dd}')

        ax[i].legend()
        ax[i].set_xlabel('d smaller')
        ax[i].set_ylabel('rratio')
        # ax[i].set_ylim(-0.1, 1.1)
        # ax.set_yscale('log')
        ax[i].grid(True)
        ax[i].label_outer()
    fig.tight_layout()
    fig.suptitle('Rate ratio. Vary delay diff at different absolute delays')
    fig.savefig(os.path.join(OUTPUT_DIR, 'rratio_same_ddiff_diff_abs.pdf'))


if (__name__ == '__main__'):
    # plot_contracts()
    rratio_same_dratio_diff_abs()
    rratio_same_ddiff_diff_abs()
    rdiff_same_ddiff_diff_abs()
    rdiff_same_dratio_diff_abs()
