function pop=mutate(pop,cityNum,index)
            p=pop(index,:);
            cityA=round(rand*(cityNum-1))+1;%���ѡȡһ�����е����
            possitionA=find(p==cityA); %�ҵ�ѡȡ�ĳ�����p�е�λ�ã�
            cityB=round(rand*(cityNum-1))+1;%�����ѡȡһ�����е����
            possitionB=find(p==cityB); %�ҵ�ѡȡ�ĳ�����p�е�λ�ã�
            pop(index,possitionA)=cityB;
            pop(index,possitionB)=cityA;   %��ɻ���       
end