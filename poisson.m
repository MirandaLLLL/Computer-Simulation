n=5000;
tmp=zeros(1,n);
for i=1:n
    b=unifrnd(0,1);
    tmp(i)=poissinv(b,10);   %poissinv�ǲ��ɷֲ������ۼӺ����ķ�������ȡlambda=10
end
hist(tmp,21)