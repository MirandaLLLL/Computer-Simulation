function [T, S, i] = one_test(N)
    T = -1;
    S = 0;
    t = ones(N, 1) * -1;    % time series
    s = ones(N, 1) * -1;    % status series, the number of available batteries 
    i = 0;                  % time stamp
    charging = 0;           % the rest of charging time 
    t(1) = 0;          
    s(1) = 2;
    rp=0;        % the whole charging time:1 or 3
    % initial status
    r = randi(6);  % time goes here!
    while (i < N - 1)  % in fact, should be infinite
        i = i + 1;  % what's the next status? (and time)
        if (s(i) == 2)  
            % one using one ready
            s(i + 1) = 1;
            t(i + 1) = t(i) + r;
            rp = 2 * randi(2) - 1;
            r = randi(6);  % go
            % one using one charging
        elseif (s(i) == 1)
            % one using one charging
            charging = rp - r; % till the using one empty
            if (charging > 0)
                % no power!
                t(i + 1) = t(i) + charging; 
                s(i + 1) = 0;
                r = 0;  % the end!
                T = t(i + 1);
                S = sum((t(2:end) - t(1:end-1)) .* s(1:end-1)) / T;
                return;  % the only way to stop!
            else
                % already full, the using one just keep on using
                % equal to one using one ready.
                t(i + 1) = t(i) + rp ;
                s(i + 1) = 2;
                charging = 0;
                r = r - rp;  % keep going!
                if (r < 0)
                    % assert!
                    fprinft(stdout, "error!\n");
                    return;
                end
            end
        end
    end
    fprintf("not finish yet!\n");
    return;
end
