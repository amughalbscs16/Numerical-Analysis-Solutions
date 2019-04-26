syms x
a = 0; b = 2;

f = @(x) 0.2 + 2.*x + 90.*x.^2 - 120.*x.^3 + 25.*x.^4;
for j = 1:7
n = 2^j;
soln = 0;
h = (b-a) / n;
intemx = a:h:b;
fx = f(intemx(1:length(intemx)-1));
fx = abs(fx);
soln = (h/2) * (abs(f(a)) + abs(f(b)) + sum(2*fx))
end
