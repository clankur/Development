import numpy as np
    #c0  #c1  #c2
a = [2],[1],[4] #r0
b = [5],[6],[8] #r1
c = [3],[7],[ ] #r2

#m[row][col] = m[2][1] = 7

m = np.array([[2,1,4],[5,6,8],[4,7,0]])
m[2][1] = m[1][2]
print(m[2][1])
