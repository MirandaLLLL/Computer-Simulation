n=5000;
tmp=zeros(1,n);
for i=1:n
    b=unifrnd(0,1);
    tmp(i)=poissinv(b,10);   %poissinv是泊松分布概率累加函数的反函数，取lambda=10
end
hist(tmp,21)