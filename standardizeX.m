function [X,mu,sigma]=standardizeX(X)

%Standardizes X

mu=mean(X);
sigma=std(X);
testX=(X-repmat(mu,size(X,1),1)) ./ repmat(sigma,size(X,1),1);
p=size(X,2);
for j=1:1:p
if isnan(testX(:,j))
   X(:,j) = X(:,j);
else
    X(:,j) = testX(:,j);
end

end