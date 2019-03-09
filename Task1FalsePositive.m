
xl = input('Enter Lower Guess: ');

xu = input('Enter Upper Guess: ');
tolerance = input('Enter tolerance value (Recommend: 0.001): ');

f = @(x) x - 2*sin(x^2);
oldxl =xl;
oldxu = xu;
xr = 1000;
xoldr = 2*xr;1


while (abs((xr-xoldr)/xr) > tolerance)
   xoldr = xr;
   xr = xu - ((f(xu)*(xl-xu))/(f(xl)-f(xu)));
   %xr
   %f(xr)
   if (f(xr) > 0)
       
       if (f(xu)<0)
           xl = xr;
       elseif (f(xl)<0)
           xu = xr;
       end
   end
   if (f(xr)<0)
       if f(xu)>0
           xl = xr;
       elseif f(xl)>0
           xu = xr;
       end         
   end
end
fprintf('The function value is: %.5f, root value: %.5f in range (%f - %f) with tolerance: %f\n', f(xr), xr, oldxl, oldxu,tolerance);

