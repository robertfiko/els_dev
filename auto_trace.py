#!/usr/local/bin/python3
import imp
import os
import subprocess
import itertools

try:
    passive_nodes = []
    possible_nodes = []
    firstRound = True

    while (firstRound or len(possible_nodes)):
        # Checking new nodes
        nodes = str(subprocess.check_output(['epmd', '-names'])).replace('\\','*')
        result_list = list(map(lambda x: (x.split(' ')[1:2]), nodes.split('*')[1:]))
        results = list(itertools.chain(*result_list))

        ls_nodes = []
        for result in results:
            if result.startswith("erlang_ls") and not result in passive_nodes:
                ls_nodes.append(result)

        possible_nodes = ls_nodes
        

        
    
    possible_nodes = filtered
    while(possible_nodes.length)
    


   
    

except subprocess.CalledProcessError as err:
    print(err)