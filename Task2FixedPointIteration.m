xl = input('Initial Guess: ');

tolerance = input('Enter tolerance value (Recommend: 0.001): ');

f = @(x) 2*sin(x^2);
xoldl = 2*xl + 1;
while (abs((xl-xoldl)/xl)) > tolerance
xoldl = xl;
xl = f(xoldl);
end
fprintf('The root of function is x = %f with relative tolerance: %f', xl, tolerance);
    