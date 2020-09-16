function coded = caesar(x,n)

N = length(x);
m = fix(n/95); % Why 95? this is because it's cyclic, think about steps between 1 to 3 when they are at
               % a straight line & now think that they are cyclic(wrapped),
               % 94+1 right?
n = n-m*95;               
               
coded = char(zeros(1,N));   %preallocating a character vector of same length as the x
for i = 1:N
    y = double(x(i))+n;     % converting the character into number and shifting it
    if (y>126)              
        y = y-95;           % bringing in the range 32 to 128
        z = char(y);
        coded(i) = z;
    elseif(y<32)
        y = y+95;           %bringing in the range of 32 to 128
        z = char(y);
        coded(i) = z;
    else
        z = char(y);
        coded(i) = z;
    end
end
end