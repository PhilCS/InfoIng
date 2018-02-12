function [b] = MULT(A,x)
% Fichier fonction pour vérifier la solution d'un système d'équations lin.
% A : matrice des coefficients des équations (format ligne)
% x : matrice de la solution (format colonne)
% b : matrice résultante

% version simplifiée : b = A*x;

% version programmée :

[m,n] = size(A);
b = zeros(n,1);

for i = 1:m
    for j = 1:n
        b(i,1) = b(i,1) + A(i,j) * x(j,1);
    end
end