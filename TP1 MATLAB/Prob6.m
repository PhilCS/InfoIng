% Philippe Carpentier-Savard
% Problème 6 - Travail Pratique 1 (MATLAB)

A = [1  1 -1
     1 -2  3
     2  3  1];
B = [4; 6; 7];
C = A';
D = B';

X1 = A \ B;
X2 = inv(A) * B;
X3 = A^(-1) * B;
X4 = (D / C)';
X5 = (D * C^(-1))';
X6 = (D * inv(C))';
% Il aurait aussi été possible d'utiliser linsolve et solve

% J'ai dû utiliser la fonction round, puisque certains résultats ne sont
% pas parfaitement exacts (ex. : 5.999 périodique)
X1_test = isequal(MULT(A,X1), B)
X2_test = isequal(round(MULT(A,X2)), B)
X3_test = isequal(round(MULT(A,X3)), B)
X4_test = isequal(MULT(A,X4), B)
X5_test = isequal(round(MULT(A,X5)), B)
X6_test = isequal(round(MULT(A,X6)), B)