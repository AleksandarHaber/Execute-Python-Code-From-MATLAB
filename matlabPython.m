%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code that demonstrates how to run Python code from MATLAB
% This is the MATLAB code that calls the Python code
% Author: Aleksandar Haber 
% Date: December 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% You should run this piece of code to enable executing on Python code from
% MATLAB, usually, once this is executed, you do not execute it anymore
% even if you restart the MATLAB session
% pyenv('Version','C:\Users\ahaber\AppData\Local\Programs\Python\Python39\python.exe')
% pe = pyenv;
% pe.Version

% use this link to check if your MATLAB version supports the Python version
% on your computer
% https://www.mathworks.com/support/requirements/python-compatibility.html
% if not, install the Python version that is supported



% define MATLAB matrices
A1=[1 2;
    3 4];
A2=[2 3;
    1 0];

% check the conversion types
% https://www.mathworks.com/help/matlab/matlab_external/passing-data-to-python.html
% convert matrices to Python objects
A1converted = py.numpy.array(A1);
A2converted = py.numpy.array(A2);
% parameter to be sent
parameter=py.int(2);

% sent the variables, call the python code in "test.py" and obtain the
% return list "result"
[result] = pyrunfile("test.py","ReturnList",A=A1converted,B=A2converted,param1=parameter)
% link explaining pyrunfile() function:
% https://www.mathworks.com/help/matlab/ref/pyrunfile.html#mw_03ecec06-0677-4345-9112-ea93ac49881e

% check the data type of returned variables
class(result)
class(result{1})

% convert the Python arrays to MATLAB matrices
C1=double(result{1});
C2=double(result{2});
C3=double(result{3});
C4=double(result{4});

% compute the matrices in MATLAB to double check the results
C1check=A1+A2;
C2check=A1*A2;
C3check=eye(2,2);
C4check=inv(A1);



