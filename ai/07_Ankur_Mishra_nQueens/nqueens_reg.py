import time
import math
import heapq
import copy
from collections import deque
import random
class nQueens:
    def __init__(self, n = 4 , depth = 0):
        '''intializes size and makes an empty list with all choices possible
        '''
        self.size = n
        self.state = [None] * n
        self.choices = list(set(range(1,n+1)) for _ in xrange(n))
        self.depth = depth
    def assign(self, var, value):
        '''updates the state by setting state[var] to value
	    also propgates constraints and updates choices
	    '''
        i = var
        for j in range(self.size):
            self.choices[j].difference_update({value - (var - j)})
            self.choices[j].difference_update({value + (var - j)})
        self.state[var] = value
        for n in self.choices:
            n.difference_update({value})
        self.choices[var] = set()
    def goal_test(self):
        '''returns True if state is the goal state
        '''
        if(None in self.state):
            return False
        return True
    def get_next_unassigned_var(self):
        i = self.depth
        if(None not in self.state):
            return None
        if(self.state[i] == None):
            return i
        else:
            self.depth = self.depth + 1
            return self.get_next_unassigned_var()
    def get_choices_for_var(self, var):
        return choices[var]
    def __str__(self):
        return str(self.state)
def dfs_search(start_nQueen):
    ''' sets board as the initial state and returns a
	    board containing an nQueens solution
	    or None if none exists
	'''
    st = time.time()
    num_nodes = 0
    nodes_gen = 0
    frontier = []
    frontier.append(start_nQueen)
    visited = set()
    while(True):
        if(len(frontier) == 0):
            return None
        current = frontier.pop()
        num_nodes = num_nodes + 1
        if(current.goal_test()):
            et = time.time()
            ttime = et -st
            return str(num_nodes) + '\t' + str(nodes_gen) + '\t' + str(nodes_gen / ttime)+ '\t' + str(ttime)
        col = current.get_next_unassigned_var()
        if(col != None):
            for val in current.choices[col]:
                child = nQueens(current.size, current.depth + 1)
                child.state = list(current.state)
                child.choices = [set(row) for row in current.choices]
                child.assign(col, val)
                if(str(child.state) not in visited):
                    nodes_gen = nodes_gen + 1
                    frontier.append(child)
                    visited.add(str(child.state))

for i in range(8,20):
    b = nQueens(n = i)
    print(str(i) + "\t" + dfs_search(b))
