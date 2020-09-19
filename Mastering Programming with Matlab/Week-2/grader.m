function payback = grader(fh1, fh2, varargin)

n = length(varargin);

for counter = 1: n
   if isequal(fh1(varargin{counter}), fh2(varargin{counter}))
       payback = true;
   else
       payback = false;
       return;
   end
end
end