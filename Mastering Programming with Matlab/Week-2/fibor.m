function f = fibor(n, vec, i, j, counter)

if nargin<2
    counter = 0;
    i = 0;
    j = 1;
    vec = [1];   
end

if counter == n-1; %I started counting from n=0
    f = vec ; 
    return;
end

if counter < n
    temp = i;
    i = j;
    j = temp +j; 
    vec = [vec,j]; 
    f = fibor(n,vec,i,j, counter+1); %Simplicity is the mother of all arts
end
end