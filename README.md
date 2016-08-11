# maxscore-estimator-mip
Exact computation of Maximum Score estimator with Mixed Integer Programming via MATLAB code 

Use handy matlab function MaxScoreCompute.m in order to exactly compute the Maxscore estimator with MIP in MATLAB. 
The function sets up the matrices A,b,c,Aeq,beq,lb,ub of the MIP model, and then relies on a MIP solver to solve it.
We can use CPLEX, or the built-in function intlinprog() in MATLAB R2014a and after.

The dataset is read in readXyw.m function via the files X.txt, y.txt and w.txt which can be adopted as desired.
Currently, also weights w are supported for an extension called 'maximum weighted score estimator'.
In order to have for a more flexible modeling approach, readers are suggested to consult the GAMS version
of the same model in https://www.gams.com/modlib/libhtml/mws.htm.

Feedback for the MATLAB code at cflorios@central.ntua.gr, cflorios@aueb.gr 
Suggested publication:  http://www.sciencedirect.com/science/article/pii/S0304407608000778 
