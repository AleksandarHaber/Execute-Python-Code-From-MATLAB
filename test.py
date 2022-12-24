# -*- coding: utf-8 -*-
"""
Code that demonstrates how to run Python code from MATLAB
This is the Python code that is called from MATLAB
Author: Aleksandar Haber 
Date: December 2022

The matrices "A" and "B" are passed to Python from MATLAB
The list "ReturnList" is returned to MATLAB

"""

# You should run these code lines in a separate Python session if the libraries numpy and scipy are not installed
# import sys
# import subprocess
# subprocess.check_call([sys.executable, '-m', 'pip', 'install','numpy'])
# subprocess.check_call([sys.executable, '-m', 'pip', 'install','scipy'])

import numpy as np
from scipy import linalg

C1=A+B
C2=np.matmul(A,B)
C3=np.eye(param1,param1)
C4=linalg.inv(A)

# this list is returned to MATLAB and later on unpacked in MATLAB
ReturnList=[C1,C2,C3,C4]