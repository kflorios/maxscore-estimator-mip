function [X,y,w]=readXyw()

%Reads X,y,w of given max score problem

%X=load('X_Horowitz.txt');
X=load('X_numeric200.txt');
%X=[X(:,2) X(:,3) X(:,4)];
X=X(:,2:end);
%y=load('y_Horowitz.txt');
y=load('y_numeric200.txt');
y=[y(:,2)];
%w=load('w_Horowitz.txt');
w=load('w_numeric200.txt');
w=[w(:,2)];


end