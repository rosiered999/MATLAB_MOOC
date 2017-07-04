function out = exp_average(varargin)
persistent count;
persistent avg;
persistent b;
if isempty(count)
    count=0;
end
in = varargin{1};
if nargin==1 && count==0
    out = in
    b = 0.1;
elseif nargin==1
    out = b*in + (1-b)*avg;
elseif nargin==2
    out = in;
    b = varargin{2};
end
avg = out;
count = count+1;