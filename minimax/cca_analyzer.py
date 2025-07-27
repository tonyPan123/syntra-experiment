import sys
import json

from util import try_except_wrapper


"""
Example json for copilot :)
{
    "data": {
        "observation": {
            "a": 1313.61865234375,
            "s": 1230.0,
            "ld": 21.84765625,
            "qdel": 2.0
        },
        "cca_rate": null,
        "belief_bounds": {
            "min_c": 16.0,
            "max_c": 26.6640625,
            "min_b": 27.1435546875,
            "max_b": 119.9423828125
        },
        "metrics": {
            "loss": 0.0,
            "neg_delivered": -100.0,
            "qdel": 1.0
        },
        "chosen_move": {
            "CCA": {
                "rate": 8.0
            }
        }
    },
    "children": Array[1][
        {
            "data": {
                "observation": {
                    "a": 1313.61865234375,
                    "s": 1230.0,
                    "ld": 21.84765625,
                    "qdel": 2.0
                },
                "cca_rate": 8.0,
                "belief_bounds": {
                    "min_c": 16.0,
                    "max_c": 26.6640625,
                    "min_b": 27.1435546875,
                    "max_b": 119.9423828125
                },
                "metrics": {
                    "loss": 0.0,
                    "neg_delivered": -100.0,
                    "qdel": 1.0
                },
                "chosen_move": {
                    "Network": {
                        "ld": 21.84765625,
                        "s": 1283.3232421875,
                        "qdel": 1.0
                    }
                }
            },
            "children": Array[0][
            ]
        }
    ]
}
"""


def parse_file(fpath):
    with open(fpath, "r") as f:
        data = json.load(f)
        return data


def get_best_child(tree):
    best = tree["data"]["chosen_move"]

    if best is None:
        return None
    elif "Network" in best:
        for child in tree["children"]:
            data = child["data"]
            if (
                data["observation"]["s"] == best["Network"]["s"]
                and data["observation"]["lo"] == best["Network"]["lo"]
                # and data["observation"]["ld"] == best["Network"]["ld"]
                # and data["observation"]["qdel"] == best["Network"]["qdel"]
            ):
                return child
    elif "CCA" in best:
        for child in tree["children"]:
            if child["data"]["cca_rate"] == best["CCA"]["rate"]:
                return child
    else:
        raise ValueError("Unknown best move")


def get_node(tree):
    data = tree['data']
    cm = data['chosen_move']
    pm = None
    obs = data['observation']
    if cm is None:
        pass
    elif 'Network' in cm:
        nm = cm['Network']
        pm = nm
        # pm = {
        #     "ddt_s": nm["s"] - obs["s"],
        #     "ddt_ld": nm["ld"] - obs["ld"],
        #     "qdel": nm["qdel"],
        # }
    elif 'CCA' in cm:
        pm = {
            "cca_rate": cm['CCA']['rate'],
        }

    cv = None
    if data["chosen_value"] is not None:
        cv = data["chosen_value"]["Value"]

    return {
        "observation": data["observation"],
        "cca_rate": data["cca_rate"],
        "history": data["history"],
        "belief_bounds": data["belief_bounds"],
        "metrics": data["metrics"],
        "chosen_move": pm,
        "chosen_leaf_value": cv
    }


@try_except_wrapper
def get_best_chain(tree_):
    # import ipdb; ipdb.set_trace()
    chain = [get_node(tree_)]
    tree = tree_
    while True:
        tree = get_best_child(tree)
        if tree is None:
            break
        chain.append(get_node(tree))
    return chain


if __name__ == "__main__":
    assert len(sys.argv) == 2
    fpath = sys.argv[1]
    assert fpath.endswith('.json')

    tree = parse_file(fpath)
    best_chain = get_best_chain(tree)

    # Write the best_chain in json to fpath with a different name
    out_file = fpath.replace('.json', '_best_chain.json')
    with open(out_file, 'w') as f:
        json.dump(best_chain, f, indent=4)

    # Print best chain for each initial CCA action
    for i, node in enumerate(tree["children"]):
        best_chain = [get_node(tree)]
        best_chain.extend(get_best_chain(node))

        # Write the best_chain in json to fpath with a different name
        out_file = fpath.replace('.json', f'_chain_action_{i}.json')
        with open(out_file, 'w') as f:
            json.dump(best_chain, f, indent=4)