# Algorithm implemented in the laboratory
function [Q R] = myGramSchmidt(A)
  # Initializing variables
  [l c] = size(A);
  Q = zeros(l, c );
  R = zeros(l);
  
  # Calculating Q and R
  for i = 1:l
    R(i, i) = norm(A(:,i));
    Q(:, i) = A(:, i) / R(i, i);
    
    for j = i + 1: l
      R(i, j) = Q(:, i)' * A(:, j);
      A(:, j) -= Q(:, i) * R(i, j);
    endfor
  endfor
  
endfunction