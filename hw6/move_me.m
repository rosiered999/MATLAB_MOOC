function w = move_me(varargin)
v = varargin{1};
if nargin==2
    a = varargin{2};
elseif nargin==1
    a = 0;
end
p = v;
q = p(p~=a);
[z,b] = size(v);
[c,d] = size(q);

e = ones(1,b-d)*a;
w = [q e];