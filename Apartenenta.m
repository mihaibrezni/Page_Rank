   # call function  y = Apartenenta(0.76532, 0.001, 0.95)
function [y] = Apartenenta(x, val1, val2)
   % The function that receives as parameters x, val1, val2 and which calculates
         # the value of the member function at point x.
	% We know that 0 <= x <= 1
   if x <= 1 && x > val2 %x ? (val2, 1]
     y = 1;
   endif
   
   if (x >= 0 && x < val1)
     y = 0;
   endif
   
   if ( x >= val1 && x < val2)
     a = (double)(1/(val2 - val1));
     b = (double)(1 - a*val2);
     y = (double)(a * x + b);
   endif
   
endfunction

## to find the two varaible a si b make a sistem at limit val1 and val2
## 0 = a*val1 + b
## 1 = a*val2 + b
## ---------------> substract
## 1 = a(val2 - val1)
##
## b = a - a*val1