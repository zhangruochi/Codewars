"""
Write a function that accepts a square matrix (N x N 2D array) and returns the determinant of the matrix.

How to take the determinant of a matrix -- it is simplest to start with the smallest cases:

A 1x1 matrix |a| has determinant a.

A 2x2 matrix [ [a, b], [c, d] ] or

|a  b|
|c  d|
has determinant: a*d - b*c.

The determinant of an n x n sized matrix is calculated by reducing the problem to the calculation of the determinants of n matrices ofn-1 x n-1 size.

For the 3x3 case, [ [a, b, c], [d, e, f], [g, h, i] ] or

|a b c|  
|d e f|  
|g h i|
the determinant is: a * det(a_minor) - b * det(b_minor) + c * det(c_minor) where det(a_minor) refers to taking the determinant of the 2x2 matrix created by crossing out the row and column in which the element a occurs:

|- - -|
|- e f|
|- h i|
Note the alternation of signs.

The determinant of larger matrices are calculated analogously, e.g. if M is a 4x4 matrix with first row [a, b, c, d], then:

det(M) = a * det(a_minor) - b * det(b_minor) + c * det(c_minor) - d * det(d_minor)
"""


import numpy as np

def get_submatrix(matrix,skip):
    return [[item for j,item in enumerate(line) if j != skip] for line in matrix[1:]]

# matrix = [[1,2,3],[4,5,6],[7,8,9]]

# print(get_submatrix(matrix,2))


def determinant(matrix):
    #your code here
    N = len(matrix)
    if N == 1:
        return matrix[0][0]

    res = 0
    if N == 2:
        return matrix[0][0] * matrix[1][1] - matrix[0][1]*matrix[1][0]
    for i in range(N):
        res += (-1)**i * matrix[0][i] * determinant(get_submatrix(matrix,i))
    return res



def numpy_det(matrix):
    matrix = np.array(matrix)
    return np.linalg.det(matrix)




if __name__ == '__main__':
    
    # matrix = [[1,2],[3,4]]
    import random 

    error = 0.1

    for i in range(100):
        N = random.randint(3,10)
        matrix = [[random.randint(0,100) for i in range(N)] for i in range(N)]

        if abs(determinant(matrix) - numpy_det(matrix)) > error:
            print("fuck!")











