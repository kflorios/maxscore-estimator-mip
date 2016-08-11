function [X,y,w]=readXywRandom()

%Reads X,y,w of given max score problem at Random

%%X=load('X_Horowitz.txt');
%X=[X(:,2) X(:,3) X(:,4)];
%%X=X(:,2:end);
% rng default
N=300;
p=4;
betas=[1 2 3 1]';
X(:,1)=random('Normal',0,1,N,1);
X(:,2)=random('Normal',0,1,N,1);
X(:,3)=random('Normal',0,1,N,1);
X(:,4)=1;

%y=load('y_Horowitz.txt');
%y=[y(:,2)];
er=random('Normal',0,1,N,1);
y=X*betas+er;
y=y>0;
%w=load('w_Horowitz.txt');
%w=[w(:,2)];
w=ones(N,1);

end