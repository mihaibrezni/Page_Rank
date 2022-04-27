# call function PageRank("graf1", 0.85, 0.001)
function  PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out
   fid = fopen(nume, "r");
   nr = str2num(fgetl(fid));
   garbage = str2num(fgetl(fid));
   for i = 1: nr-1
     garbage = str2num(fgetl(fid));
   endfor
   val_1 = fscanf(fid, '%f', 1);
   val_2 = fscanf(fid, '%f', 1);
   fclose(fid);
   rage = Iterative(nume, d, eps);
   
   
   file_out = [nume ".out"];
   out_fid = fopen(file_out, "w");
   % put number of web pages with a blank line
   fprintf(out_fid, "%d\n", nr);
   fprintf(out_fid, "\n");
   
   # first vector
   rage = rage'; # make it column
   fprintf(out_fid, "%f\n", rage);
   fprintf(out_fid, "\n");
   
   rage = Algebraic(nume, d);
   rage = rage';
   # printf second vector and a new line
   fprintf(out_fid, "%f\n", rage);
   fprintf(out_fid, "\n");
   
   # sort vector
   # PR1 = zeros(nr,1);
   PR1 = sort(rage, 'descend');
   for i = 1:nr
     fprintf(out_fid, "%d ", i); # i in order
     # find position of every element from sorted vector in the original one
     for j = 1: nr
       if PR1(i) == rage(j)
         fprintf(out_fid, "%d ", j)
       endif
      # degree of affiliation
    endfor
      apart = Apartenenta(PR1(i), val_1, val_2);
      fprintf(out_fid, "%f\n", apart);
   endfor
   fclose(out_fid);
endfunction

# done :)