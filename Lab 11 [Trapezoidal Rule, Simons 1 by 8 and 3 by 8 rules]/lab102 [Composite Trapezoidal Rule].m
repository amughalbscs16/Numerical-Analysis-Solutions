syms t
g = 9.81;
m = 68.1;
cd = 0.25;
x = 0:(10/6):10;
fun = @(t) ( sqrt((g*m)/cd) ) * tanh( (sqrt((g*cd)/m)) * t);
h = 10/6;
y = fun(x);
%Trapezoidal rule for 6 intervals or (we could use trapezoidal on 6 and sum
%them up seperately, interval example (0-1.666) y = velocity
% h/2(fx2+fx1) + h/2 (fx3+fx2) = h/2*((fx3+fx1)+2*(fx2))
distance = (h/2)*((y(1)+y(7)) + 2 * (y(2) + y(3) + y(4) + y(5) + y(6)));
fprintf('The total distance travelled is %.8f',distance);

