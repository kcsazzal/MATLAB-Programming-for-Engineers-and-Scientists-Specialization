function output = blur(img, w)
[row,col] = size(img);
converted_img = double(img);
new_mat = zeros(row,col);
for i = 1:row
    for j = 1:col
        row_range = (i-w):(i+w); %Finding range of row
        col_range = (j-w):(j+w); %Finding column range
        row_range = row_range(row_range>0 & row_range<=row); %that validates the row range
        col_range = col_range(col_range>0 & col_range<=col); %validating the column range
        submat = converted_img(row_range,col_range);
        temp_vector = submat(:);
        new_mat(i,j) = sum(temp_vector)/length(temp_vector);
    end
end

output = uint8(new_mat);
%Images of type double are assumed to have values between 
%0 and 1 and uint8 images are assumed to have values between
%0 and 255. Since your double data contains values between 0
%and 255 (since you simply cast it as a double and don't perform any 
%scaling), it will appear as mostly white since most values are greater
%than 1. Credit: Stackoverflow
end
