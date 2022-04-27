% call function PageRank("graf1", 0.85, 0.001)
function PR = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.

   # create matrix A and link matrix
   [A, nr, link] = take_graph(nume);

   % M
   M = zeros(nr);
   for i = 1:nr
	   for j = 1:nr   
		   if A(j,i) == 1 # check conection from page j to i
		   	M(i,j) = (double)(1/link(j)); # after formula :)
		   end
	   end
   end
  
   # find PR
   PR = zeros(nr, 1); 
   
   for i =1:nr
      PR(i) = 1 / nr; % initial rank after formula
   end
   % R = (dM + ( 1 - D)/ nr * E) * R with E*R= 1;
   % so R = (I - dM)^-1 * (1-d)/nr * I
   PR = PR_Inv(eye(nr)- d * M) * ((1 - d) / nr) * ones(nr,1); 
   endfunction