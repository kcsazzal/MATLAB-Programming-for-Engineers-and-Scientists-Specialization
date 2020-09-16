function charnum = char_counter(fname,character)
fid = fopen(fname, 'rt');
if (fid<0)
    charnum = -1;
    return;
end


if ~(ischar(character))
    charnum = -1;
    return;
end
charnum = 0;
oneline = fgets(fid);
while ischar(oneline)
    len_of_line = length(oneline);
    for i = 1:len_of_line;
        if strcmp(oneline(i),character)
            charnum = charnum + 1;
        end
    end
    oneline = fgets(fid);
            
end
fclose(fid);
end