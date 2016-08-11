function [lb,ub, Aeq, beq, n, p, best]=definelbub(X)

%Defines lb,ub for milp.m
d=10;
%d=5;
n=size(X,1);
p=size(X,2);
lb1=repmat(0,1,n);
lb2=repmat(-d,1,p);
lb2(1)=1;
lb=[lb1 lb2];

ub1=repmat(1,1,n);
ub2=repmat(d,1,p);
ub2(1)=1;
ub=[ub1 ub2];

Aeq=[];
beq=[];

best=0;

end