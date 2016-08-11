function [estimatesRaw]=denormalizeEstimates(estimatesNorm,mu,sigma);

%denormalized estimatesNorm obtained by Gurobi MIP to estimatesRaw, which
%are meaningful to the user

%quick and dirty implementation, based on GAMS and Fortran Analogues
p=size(estimatesNorm,1);
betaNorm=estimatesNorm;

for j=1:1:p
    betaRaw(j)=0;
    betaHelp(j)=0;
end

for j=1:1:p
    if (sigma(j) ~=0) 
        betaHelp(j)= betaNorm(j)./sigma(j);
    end
    if (sigma(j) ==0)
        for jj=1:1:p
            if (sigma(jj) ~=0)
                betaHelp(j)=betaHelp(j)-betaNorm(jj).*mu(jj)./sigma(jj) ;
            else
                jj0=jj;
            end
        end
        betaHelp(j)=betaHelp(j)+betaNorm(jj0);
    end
end

for j=1:1:p
   betaRaw(j)=betaHelp(j)./betaHelp(1); 
end

estimatesRaw=betaRaw;

end