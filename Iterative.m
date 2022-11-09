# call function:  R = Iterative("graf1", 0.85, 0.001)
function R = Iterative(nume, d, eps)

# create matrix A and link
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

%PageRank indices calculation
R = ones(nr, 1);
R = R .* ((double) (1/nr) );
aux = ones(nr, 1);
while true
	initial_R = R;
	R = ((double)(1-d)/nr)*aux + d*M*R;
	if abs(R - initial_R) < eps # condition to stop
		break;
	end
end

endfunction 