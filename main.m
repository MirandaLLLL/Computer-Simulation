clear;
total_time = 10.0;  %总营业时间
lambda = 65;       %顾客到达率
mu = 60;           %服务速度
guests = sampling(total_time, lambda, mu);  %顾客信息 
arrive_time = guests(1, :);      %顾客到达时间
service_time = guests(2, :);      %顾客服务时间
total_num = size(guests, 2);         %总顾客人数
waitting_time = zeros(1, total_num);  %等待时间
service_start = zeros(1, total_num);  %服务开始时间
service_start(1) = arrive_time(1);   %第一个顾客服务开始时间是第一个顾客到达时间
leaving_time = zeros(1, total_num);  %离开时间
leaving_time(1) = arrive_time(1) + service_time(1);  %第一个顾客离开时间是到达时间加服务时间

for i=2:total_num
    in_queue_time = leaving_time(i - 1) - arrive_time(i);
    if in_queue_time > 0
        waitting_time(i) = in_queue_time;
    end
    service_start(i) = arrive_time(i) + waitting_time(i);
    leaving_time(i) = service_start(i) + service_time(i);
end
queue = get_queue(arrive_time,leaving_time)