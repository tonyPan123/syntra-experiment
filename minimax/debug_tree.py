import sys
import json

from util import try_except_wrapper

def parse_file(fpath):
    with open(fpath, "r") as f:
        data = json.load(f)
        return data
    
def get_best(root):
    metrics =  tree['data']['chosen_value']['Value']['metrics']

if __name__ == "__main__":
    assert len(sys.argv) == 2
    fpath = sys.argv[1]
    assert fpath.endswith('.json')


    tree = parse_file(fpath)

    print(tree['data']['chosen_value'])
    print()
    print()
    print()  
    for i in range(len(tree['children'])):
        #print (tree['children'][i]['data']['abr_action'])  
        print (tree['children'][i]['data']['cca_rate'])  
        #print (tree['children'][i]['data']['bit_rate'])
        print (tree['children'][i]['data']['chosen_value'])   
        print()
    #for i in range(len(tree['children'])):
    #    print()
    #    print()
    #    print() 
    #    print(tree['children'][i]['data']['observation'])
    #    print(tree['children'][i]['data']['chosen_move'])
    #    print(len(tree['children'][0]['children']))
    #    print()
    #    print()
    #    print() 
    #    for j in range(len(tree['children'][i]['children'])):
    #        print(tree['children'][i]['children'][j]['data']['observation'])
    print()
    print()
    print()
    print()
    print()
    print()
    target = tree['children'][1]['children'][0]['children'][2]['children'][1]['children'][1]
    #length = len(target)
    for i in target['children']:
        print (i['data']['cca_rate'])  
        print (i['data']['observation'])  
        #print (tree['children'][i]['data']['bit_rate'])
        print (i['data']['belief_bounds'])  
        print (i['data']['metrics'])  
        #print (i['data']['chosen_value'])   
        print()


