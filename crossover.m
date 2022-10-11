function pop= crossover(pop,popSize,cityNum,index) %实现交叉互换
  x=index;
  if x==popSize
      y=1;
  end
  if x~=popSize
      y=index+1;
  end
  pop1=pop;
  p1=round(rand*(cityNum-1))+1;
  p2=round(rand*(cityNum-1))+1;          %选取交叉互换片段的起始位置
  while p1==p2
      p2=round(rand*(cityNum-1))+1;
  end
  
  if p1>p2
      minP=p2;
      maxP=p1;
  end
  if p1<p2
      minP=p1;
      maxP=p2;
  end
   for i=minP:maxP
      pop(x,i)=pop1(y,i);
      pop(y,i)=pop1(x,i);  %片段交换
   end 
   px=pop1(x,:);
   py=pop1(y,:);
   for i=minP:maxP
       value1=pop1(y,i);
       value2=pop1(x,i);
       number1=find(px==value1);
       number2=find(py==value2);
       pop(x,number1)=pop1(x,i);
       pop(y,number2)=pop1(y,i);
   end
   for i=minP:maxP
       pop(x,i)=pop1(y,i);
       pop(y,i)=pop1(x,i);
   end
end

 
