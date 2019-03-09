syms x y;
x = (0:1:8)';
y = ([40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60])';
pc = polyfit(x,y,1); %Linear Fit
plot(x,y,'ro');
hold on;
plot(x,polyval(pc,x),'b-');
txt = sprintf('Best fit line y=%.2fx + %.2f', pc(1), pc(2));
legend('Data points', txt);
fprintf('At value t=4.5')
polyval(pc,4.5)
fprintf('At value t=8.5')
polyval(pc,8.5)
