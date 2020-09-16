function y = palindrome(text, first_half, last_half)

if nargin<2
    n = length(text);
    if rem(n,2) ~= 0                   %checking whether the string has even number of letter
        n = floor(n/2);                %based on which we will divide the string into two vectors
        first_half = text(1:n);
        last_half = text((n+2):end); 
    else
        n = n/2;
        first_half = text(1:n);
        last_half = text((n+1):end);   %notice the difference of slicing selection
    end
else
    if first_half == last_half(end:-1:1)
        y = true;
        return;
    else
         y = false;
         return;
    end
    
end

y = palindrome(text, first_half, last_half);  %the recursion

end