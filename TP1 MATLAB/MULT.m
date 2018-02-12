function [b] = MULT(A,x)
% Fichier fonction pour v�rifier la solution d'un syst�me d'�quations lin.
% A : matrice des coefficients des �quations (format ligne)
% x : matrice de la solution (format colonne)
% b : matrice r�sultante

% version simplifi�e : b = A*x;

% version programm�e :

[m,n] = size(A);
b = zeros(n,1);

for i = 1:m
    for j = 1:n
        b(i,1) = b(i,1) + A(i,j) * x(j,1);
    end
end