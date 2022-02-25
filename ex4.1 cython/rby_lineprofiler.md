Wrote profile results to rbf.py.lprof
Timer unit: 1e-06 s

Total time: 15.8901 s
File: rbf.py
Function: rbf_network at line 4

Line #      Hits         Time  Per Hit   % Time  Line Contents
==============================================================
     4                                           @profile
     5                                           # Naive python implementation of a Radial Basis Function (RBF) approximation scheme
     6                                           def rbf_network(X, beta, theta):
     7
     8         1          3.9      3.9      0.0      N = X.shape[0]
     9         1          1.7      1.7      0.0      D = X.shape[1]
    10         1         13.5     13.5      0.0      Y = np.zeros(N)
    11
    12      1001        584.8      0.6      0.0      for i in range(N):
    13   1001000     567451.1      0.6      3.6          for j in range(N):
    14   1000000     534647.0      0.5      3.4              r = 0
    15   6000000    3557360.6      0.6     22.4              for d in range(D):
    16   5000000    8206027.7      1.6     51.6                  r += (X[j, d] - X[i, d]) ** 2
    17   1000000     745205.1      0.7      4.7              r = r**0.5
    18   1000000    2278802.4      2.3     14.3              Y[i] += beta[j] * exp(-(r * theta)**2)
    19
    20         1          1.1      1.1      0.0      return Y

Total time: 0.24249 s
File: rbf.py
Function: rbf_scipy at line 21

Line #      Hits         Time  Per Hit   % Time  Line Contents
==============================================================
    21                                           @profile
    22                                           # Scipy implementation of a Radial Basis Function (RBF) approximation scheme
    23                                           def rbf_scipy(X, beta):
    24
    25         1          6.1      6.1      0.0      N = X.shape[0]
    26         1          1.8      1.8      0.0      D = X.shape[1]
    27         1     178600.7 178600.7     73.7      rbf = Rbf(X[:,0], X[:,1], X[:,2], X[:,3], X[:, 4], beta)
    28                                               #Xtuple = tuple([X[:, i] for i in range(D)])
    29         1         39.4     39.4      0.0      Xtuple = tuple([X[:, i] for i in range(D)])
    30
    31         1      63842.3  63842.3     26.3      return rbf(*Xtuple)

