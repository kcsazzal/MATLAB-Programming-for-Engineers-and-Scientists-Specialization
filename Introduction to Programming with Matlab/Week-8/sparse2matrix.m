function M = sparse2matrix(C)

[r,c] = size(C);
M = C{1,2}*ones(C{1,1}); %Creating a matrix with default value 
for j = 3:c
    M(C{1,j}(1,1),C{1,j}(1,2)) = C{1,j}(1,3); %assigning value to the specified element of the matrix
end
end