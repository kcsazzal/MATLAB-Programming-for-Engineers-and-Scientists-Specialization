function [f, trace] = fibo_trace(n, trace)
    trace = [trace,n]; %concatenating the value of n with traced values
    if n<=2
        f = 1;
    else

        [f1, trace] = fibo_trace(n-2, trace); %so that trace reserves all the 
        %values of n with recursive call 
        [f2, trace] =  fibo_trace(n-1, trace);
        f = f1+f2; %adding the values of recursion
        
    end
    
end
