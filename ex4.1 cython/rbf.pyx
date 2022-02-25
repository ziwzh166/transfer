# -*- coding: utf-8 -*-
"""
Created on Fri Feb 25 12:09:55 2022

@author: zhao
"""


def rbf_network_cython(double X[][] , double beta[] ,int theta):
    cdef int N, D
    N = sizeof(X)/sizeof(X[0])
    D = sizeof(X)/sizeof(X[0][0])
    cdef double Y[N]
    cdef int i,j,d
    double r
    for i in range(N):
        for j in range(N):
            r = 0
            for d in range(D):
                r += (X[j, d] - X[i, d]) ** 2
            r = r**0.5
            Y[i] += beta[j] * exp(-(r * theta)**2)
    return Y
    



    
    
    
    