# MN - Google PageRank Algorithm 

 ->This program was implemented in Octave => [Install octave](https://www.gnu.org/software/octave/download)

## ->The first task implements the Iterative version of the algorithm

* I make the system matrix in a separate matrix in which if there is a link from i to j then we have a link and put 1 in M ​​[i] [j].
  
* At the same time I find out the link vector.
* I find the link matrix M and calculate it according to the formula.
* Iterations stop when the difference between two Pagerank vectors
  consecutive is less than the given error

## ->The second requirement involves the algebraic implementation of the algorithm

* Same story as above, but you will need to calculate rank knowing that :

  ```bash
   R = (d\*M + ( 1 - D)/ nr\*E)\*R cu E\*R= 1, so
  ```

  ```bash
   R = (I - d\*M)^(-1) \* ( 1 - d ) / nr
   ```

* The last relation represents a superior triangular system, which is solved by the SST() method.

## For the third requirement

* I put all the data in the file. :)

* We sorted the descending vector and looked for the initial position of each element in the sorted vector in the initial one
  
* To find the affiliation we applied the function of U(X) and we found the values ​​of the variables a and b according to the known val_1 and val_2.
  
* To find the two varaible a si b make a sistem at limit val1 and val2:

  ```bash
  1 = a\*val2 + b
  ```

  ```bash
  0 = a\*val1 + b
  ```

  ```bash
  ---------------> substract
  ```

  ```bash
  1 = a\*(val2 - val1)
  ```

  ```bash
  b = a - a \* val1
  ```

## ->Feedback

A very interesting topic that made me quite curious about what happens
behind a search engine that I use every day.
Thanks to the authors :)

## PS : Also check this guys for a different point of view

* [raduqq](https://github.com/raduqq/PageRank)
* [sorindragan](https://github.com/sorindragan/page-rank)
