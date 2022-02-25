# -*- coding: utf-8 -*-
"""
Created on Fri Feb 25 13:22:00 2022

@author: zzw
"""

from distutils.core import setup
from Cython.Build import cythonize

setup(
    ext_modules = cythonize('rbf.pyx')
)
