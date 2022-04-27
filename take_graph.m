# call [A, nr, link] = take_graph("graf1")
function [A, nr, link] = take_graph(nume)
  # number of elelements

  fid = fopen(nume, "r");
  nr = str2num(fgetl(fid));
  A = zeros(nr, nr);
  w = zeros(nr);
  link = zeros(1, nr);
    
  #use a vector to store each line with  neighbors
  w = ones(1, nr);
  for i = 1:nr
	w = str2num(fgetl(fid));
	for j = 3: length(w)
		A(w(1),w(j)) = 1;
	end
	link(i) = w(2);
  end

   for i =1:nr # useless link :)
	   if A(i,i) == 1
		   A(i,i) = 0;
		   link(i) = link(i)-1;
	   end
    end
  fclose (fid);
endfunction