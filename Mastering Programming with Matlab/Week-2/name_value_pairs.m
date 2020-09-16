function out = name_value_pairs(varargin)
if nargin>0 && rem(nargin, 2) == 0
    out = cell(nargin/2, 2); %previously i made sure that varargin contains even number of arguments
    for ii = 1:nargin
        if rem(ii,2) ~= 0
            if ischar(varargin{ii})   %closely notice we used curly brace as the varargin variable is a ce
                out{(ii+1)/2,1} = varargin{ii}; %putting the odd value in the first column
            else
                out ={};
                return;
            end
        else
            out{ii/2,2} = varargin{ii}; %putting the even value in the second column
        end
    end
else
    out = {};
end  
end
