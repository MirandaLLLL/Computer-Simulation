function d= distance(pop,cities,cityNum,index ) %计算种群的适应度值
d=0;
    for j=1:cityNum-1
        x1=cities(1,pop(index,j));
        x2=cities(1,pop(index,j+1));
        y1=cities(2,pop(index,j));
        y2=cities(2,pop(index,j+1));
        d=d+sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
    end
    x1=cities(1,pop(index,cityNum));
    x2=cities(1,pop(index,1));
    y1=cities(2,pop(index,cityNum));
    y2=cities(2,pop(index,1));
      d=d+sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));  
end