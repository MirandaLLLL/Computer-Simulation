M=zeros(100,1);
T=0.1:0.1:10;
for i=1:100
    for j=1:10
         M(i) = M(i) + Isingfunction(i*0.1);
    end
     M(i) = M(i) / 10;
end
plot(T,M)