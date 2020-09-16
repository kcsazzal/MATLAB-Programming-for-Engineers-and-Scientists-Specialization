function indices = saddle(M)
indices =[];
[row,col] = size(M);
for i = 1:row
    for j = 1:col
        if row>1 && col>1 && ((sum(M(i,j) >= M(i,:)) == col) && (sum(M(i,j) <= M(:,j)) == row))
            %checking whether sum of the logical values of comparison with
            %the row and column serve the condition to be called as saddle
            %point.
            indices = [indices; [i,j]];
        elseif (row == 1) && col>1 && ((sum(M(i,j) >= M(i,:)) == col))
            indices = [indices; [i,j]];
        elseif (row>1) && (col==1) && (sum(M(i,j) <= M(:,j)) == row)
            indices = [indices; [i,j]];
        elseif (row==1) && (col==1)
            indices = [i,j];
        end
    end
end

end