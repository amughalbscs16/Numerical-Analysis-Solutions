syms x y;
F = @(x,y) [4*x^2 - 20*x - (1/4)*y^2 + 8; (1/2)*x*(y^2) + 2*x - 5*y + 8];

Jacob = jacobian([F],[x,y]);

X1 = [0;0]
FX1 = double(F(X1(1),X1(2)))
while max(FX1) > 0.001
J1 = subs(Jacob,{x,y} , {X1(1),X1(2)});
J1det = det(J1);
J1adj = zeros(2,2);
J1adj(1,1) = J1(2,2);
J1adj(1,2) = -J1(1,2);
J1adj(2,1) = -J1(2,1);
J1adj(2,2) = J1(1,1);

Jinv = (1/J1det).*J1adj;

XN = double(X1 - Jinv*FX1);
X1 = XN
FX1 = double(F(X1(1),X1(2)))
end

