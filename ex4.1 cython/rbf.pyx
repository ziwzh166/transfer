# -*- coding: utf-8 -*-
"""
Created on Fri Feb 25 12:09:55 2022

@author: zzw
"""

def rbf_cython(float X[] , float beta[] ,int theta):
    cdef int N, D
    N = sizeof(X)/sizeof(X[0])
    D = sizeof(X)/sizeof(X[0][0])
    return N,D
int main(void)
{float x [10][15]
 int N = rbf_cython(x)
 return}

    
    
    
    