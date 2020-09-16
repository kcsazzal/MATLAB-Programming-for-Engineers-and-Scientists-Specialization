function w = reversal(v,reverse_vec,n)
if nargin<2
     reverse_vec = [];
     n = length(v);
end
 
if(n == 0)
    w = reverse_vec; 
    return;
end
if(n >= 1)
    reverse_vec = [reverse_vec,v(n)]; % appending new value in reversed order
    w = reversal(v, reverse_vec, n-1); %recursion

end