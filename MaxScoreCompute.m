function [value,estimates,time,quality]=MaxScoreCompute()

%Main Program: Computes Max score by defining a MILP and calling milp.m
tic
[X,y,w]=readXyw();
[X,mu,sigma]=standardizeX(X);
[c,A,b]=definecAb(X,y,w);
[lb,ub, Aeq, beq, n, p, best]=definelbub(X);
%[x,score,feasible, time]=milp_cplex(c,A,b,Aeq,beq,lb,ub);
intcon=[1:n];
[x,score,feasible]=intlinprog(c,intcon,A,b,Aeq,beq,lb,ub);

estimatesNorm=x((n+1):(n+p))
value=score
status=feasible
%runtime=time
%quality=status

estimatesRaw=denormalizeEstimates(estimatesNorm,mu,sigma)
estimates=estimatesRaw
time=toc


end