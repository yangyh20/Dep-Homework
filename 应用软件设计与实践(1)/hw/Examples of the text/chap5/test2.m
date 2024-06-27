function res = test2(x,y)
error(nargchk(1,2,nargin));
if nargin == 2
   res = sqrt(x.^2 + y.^2);
else
   res = x;
end
