function [summa,index] = max_sum(v,n)
summa =0;
prev_summa = -inf;
index = 0;

    if (n<=length(v))
        for i = 1:(length(v)-n+1)
            summa = sum(v(i:(i+n-1)));
            if (i==1 || summa>prev_summa);
                prev_summa = summa;
                index = i;
            end
                
        end
        
       
    else
        index = -1;
    end
      summa = prev_summa; 
end



