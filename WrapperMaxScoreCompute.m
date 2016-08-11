function [valueAll,estimatesAll,timeAll,qualityAll]=WrapperMaxScoreCompute()

%Main Program: Computes Max score by defining a MILP and calling milp.m
tic
rng default
Reps=10;
valueAll=zeros(Reps,1);
estimatesAll=zeros(Reps,4);
timeAll=zeros(Reps,1);
qualityAll=cell(Reps,1);
for iRep=1:Reps
[X,y,w]=readXywRandom();
[X,mu,sigma]=standardizeX(X);
[c,A,b]=definecAb(X,y,w);
[lb,ub, Aeq, beq, n, p, best]=definelbub(X);
%[x,score,feasible, time]=milp_cplex(c,A,b,Aeq,beq,lb,ub,n, best);
%[x,score,feasible, time]=milp_cplex(c,A,b,Aeq,beq,lb,ub);
intcon=[1:n];
[x,score,feasible]=intlinprog(c,intcon,A,b,Aeq,beq,lb,ub);


estimatesNorm=x((n+1):(n+p))
value=score
status=feasible
%runtime=time
quality=status

estimatesRaw=denormalizeEstimates(estimatesNorm,mu,sigma)
estimates=estimatesRaw
time=toc
% HILSquality=feasible;
valueAll(iRep)=value;
estimatesAll(iRep,:)=estimates;
timeAll(iRep)=time;
qualityAll{iRep}=quality;
end

end
