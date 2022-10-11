function queue = get_queue(arrive_time,leaving_time);
N=size(arrive_time,2);  %总顾客人数；
queue=zeros(2,N*2);
i=1;
j=1;
k=1;
queue(2,1)=1;
while i~=N             %第一个顾客的到达时间必定早于顾客的离开时间
      if arrive_time(1,i)<leaving_time(1,i)  %当顾客的到达时间小于离开时间时
        queue(1,k)=arrive_time(1,i);
        if k~=1
        queue(2,k)=queue(2,k-1)+1;         %队列里的顾客数加1；
        else
        queue(2,k)=1;                      %第一个人到时；队列数量为1；
        end
        k=k+1;
        i=i+1;
      else                                   %当顾客的到达时间小于离开时间时
        queue(1,k)=leaving_time(1,j);       
        queue(2,k)=queue(2,k-1)-1;         %队列里的顾客数减1；
        k=k+1;                             %等下一次行列改变；
        j=j+1;
      end    
end
while j~=N                          %当全部顾客都到达后必定还有顾客没离开
    queue(1,k)=leaving_time(j);
    queue(2,k)=queue(2,k-1)-1;      %队列数-1
    k=k+1;
    j=j+1;
end
queue=queue(2,1:k-1);
        
        

