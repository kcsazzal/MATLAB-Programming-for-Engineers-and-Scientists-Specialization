function summa = halfsum(A)
[m,n] = size(A);
summa = 0;
for i = 1:m
    for j = 1:n
        if(j>=i)
        summa = summa+ A(i,j);
        end
    end
end
end