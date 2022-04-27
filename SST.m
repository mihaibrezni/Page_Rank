function x = SST(U, b)
  n = length(b); # number of elements
  x = zeros(n,1);
  # take x_n separately
  x(n) = b(n)/U(n,n);
  
  for i = (n-1):-1:1
    x(i) = 1/U(i,i) * (b(i) - U(i,(i+1):n) * x((i+1):n));
  endfor

 endfunction