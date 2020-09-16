function [a,b,c,d] = corners(x)
    a = x(1,1);
    b = x(1,end);
    c = x(end,1);
    d = x(end,end);
end