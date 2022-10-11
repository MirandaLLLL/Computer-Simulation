function guests = sampling(T, L, M);
% T - total time
% L - lambda
% M - mu
% guests(1, :) = guests arriving time
% guests(2, :) = guests in-service time
    N = T * L * 2;   %顾客总人数，用于预置内存
    guests = zeros(2, N);
    guests(1, :) = cumsum(exprnd(1.0 / L, 1, N)); %顾客出现时间
    guests(2, :) = exprnd(1.0 / M, 1, N);  %顾客服务时间
    guests = guests(:, guests(1, :) < T);  %在营业时间内到达的客户
end