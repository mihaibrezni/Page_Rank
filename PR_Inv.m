% call R = Algebraic("graf2", 0.85, 0.001)
function B = PR_Inv(A)
	%  The function that calculates the inverse of the matrix A using Gram-Schmidt factorization
	% This line will be replaced with the description of the inversion algorithm
   % T = [t1t2 . . . tn], T^-1 = [x1x2 . . . xn] with T * T^-1  
   % as in T · xi = ei-> q * r * xi = ei -> r *xi = q^-1 * ei
  rows = rows(A);
  
  B = [];
  
  for i = 1:rows
    [Q R] = modified_Gram_Schmidt(A); #fing QR
    I = eye(rows);     
    aux = SST(R, inv(Q) * I(:,i)); # solve every system 
    B = [B aux]; % concatenate the columns
  endfor 
endfunction