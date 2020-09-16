function mx = recursive_max(v, i)
if nargin<2
    i=1;
end
if(i<=length(v))
    if sum(v(i)>=v) == length(v) %condition for finding the maximum
        mx = v(i);
        return
    else
       mx = recursive_max(v,i+1); %recursion
    end
end

end
