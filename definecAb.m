function [c,A,b]=definecAb(X,y,w)

%Defines c,A,b for milp.m

n=size(X,1);
p=size(X,2);

c1=repmat(-1,1,n);
c2=repmat(0,1,p);
c=[c1 c2];

d=10;
%d=5;
for i=1:1:n
    M(i)=abs(X(i,1))+abs(X(i,2:end))*repmat(d,1,p-1)';
end
Abin=diag([M]);
for i=1:1:n
    for j=1:1:p
        Areal(i,j)=(1-2.*y(i)) * X(i,j) ;
    end
end
A=[Abin Areal];

b=M;

end