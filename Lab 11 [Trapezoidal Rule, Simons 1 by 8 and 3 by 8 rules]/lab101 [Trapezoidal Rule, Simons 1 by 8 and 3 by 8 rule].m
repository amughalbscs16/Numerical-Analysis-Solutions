%Trapezoidal rule (0.5-2)
V = [0.5 2 3 4 6 8 10 11];
p = [336 294.4 266.4 260.8 260.5 249.6 193.6 165.6];
h1 = V(2)-V(1);
sum1 = (h1/2) * (p(1)+p(2));
%1/3 Simpsons Rule (2 - 4)
h2 = V(3)-V(2);
sum2 = (h2/3)*(p(2)+4*p(3)+p(4));
%3/8 Simpsons Rule (4 - 10)
h3 = V(5) - V(4);
sum3 = ((3*h3)/8) * (p(4) + 3*p(5) + 3*p(6) + p(7));
%Trapezoidal rule (10 - 11)
h4 = V(8)-V(7);
sum4 = (h4/2) * (p(7)+p(8));
answer = sum1 + sum2 + sum3+ sum4;
fprintf('The Total work is %.3f', answer);
