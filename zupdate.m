function [z]=zupdate(k, zold, bigW)
n=length(k);
z=zeros(n,1);
parfor i=1:n
    prod1=zold.*bigW(:,i);
    prod1(i)=[];
    prod2=zold(i)*prod1;
    z(i)=k(i)/sum(prod1./(1+prod2));
end

z=max(z,10^(-15));




                