% call R = Algebraic("graf2", 0.85, 0.001)
function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Se va inlocui aceasta linie cu descrierea algoritmului de inversare
   % T = [t1t2 . . . tn], T^-1 = [x1x2 . . . xn] with T * T^-1  
   % as in T · xi = ei-> q * r * xi = ei -> r *xi = q^-1 * ei
 rows = rows(A);
  I = eye(rows);
  B = [];
  
  for i = 1:rows
    [Q R] = modified_Gram_Schmidt(A);    #fing QR 
    ei = I(:, i); # all lines and i column  
    aux = SST(R, inv(Q) * ei); # solve every system 
    B = [B aux]; % concatenate the columns
  endfor 
endfunction