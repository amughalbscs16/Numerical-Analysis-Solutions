a=0;b=2;
ezplot('0.2 + 2.*x + 90.*x.^2 - 120.*x.^3 + 25.*x.^4', [a, b]), hold on
approx = zeros(1,7); %initialize vector of results
for j = 1:7
    n = 2^j;
    x = b*(0:1/n:1);
    plot(x, 0.2 + 2.*x + 90.*x.^2 - 120.*x.^3 + 25.*x.^4, 'r')
    weights = [1, 2*ones(1,n-1), 1];
    approx(j) = b/(2*n)*(0.2 + 2.*x + 90.*x.^2 - 120.*x.^3 + 25.*x.^4)*weights';
end
disp('Using Trapezoidal Rule')
disp('         n       Approximation')
for j = 1:7
    disp(['n = ', num2str(2^j, '%d'), '    ', num2str(approx(j), '%1.10f')])
end