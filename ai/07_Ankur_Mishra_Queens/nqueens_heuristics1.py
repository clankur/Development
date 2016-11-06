import time
import math
import heapq
import copy
from collections import deque
import random

class nQueens:
    def __init__(self, n=8, parent=None):
        self.size = n
        self.state = [None] * n
        self.choices = list(set(range(1,n+1)) for _ in xrange(n))
    def assign(self, var, value):
        i = var
        for j in range(self.size):
            if(self.state[j] != None and abs(value - self.state[j]) == abs(i-j)):
                return
        self.state[var] = value
        for n in self.choices:
            n.difference_update({value})
    def goal_test(self):
        if(None in self.state):
            return False
        return True
    def get_next_unassigned_var(self):
        if(None not in self.state):
            return None
        mini = 0
        for i in range(self.size):
            if(self.state[i] == None and len(self.choices[mini]) > len(self.choices[i])):
                mini = i
            if(self.state[i] == None and len(self.choices[mini]) == len(self.choices[i])):
                g = random.randint(0,10)
                if(g > 5):
                    mini = i
        return mini
    def get_choices_for_var(self, var):
        return choices[var]
    def __str__(self):
        return str(self.state)

def dfs_search(start_nQueen):
    frontier = []
    frontier.append(start_nQueen)
    visited = set()
    while(True):
        if(len(frontier) == 0):
            return None
        current = frontier.pop()
        if(current.goal_test()):
            return current
        col = current.get_next_unassigned_var()
        if(col != None):
            for val in current.choices[col]:
                child = nQueens(parent=current)
                child.state = list(current.state)
                child.choices = [set(row) for row in current.choices]
                child.assign(col, val)
                if(str(child.state) not in visited):
                    frontier.append(child)
                    visited.add(str(child.state))
n = nQueens()
print(dfs_search(n))