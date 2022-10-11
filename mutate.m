function pop=mutate(pop,cityNum,index)
            p=pop(index,:);
            cityA=round(rand*(cityNum-1))+1;%随机选取一个城市的序号
            possitionA=find(p==cityA); %找到选取的城市在p中的位置；
            cityB=round(rand*(cityNum-1))+1;%随机再选取一个城市的序号
            possitionB=find(p==cityB); %找到选取的城市在p中的位置；
            pop(index,possitionA)=cityB;
            pop(index,possitionB)=cityA;   %完成互换       
end