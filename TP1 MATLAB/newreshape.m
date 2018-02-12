function [R] = newreshape(M,r,c)
% Fichier fonction qui simule la fonction MATLAB reshape(A,m,n)
% M : matrice de d�part
% r : nombre final de lignes
% c : nombre final de colonnes
% R : matrice r�sultante

[m,n] = size(M);

M_len = m*n;
R_len = r*c;

if M_len ~= R_len
    error('La matrice M n''est pas de taille %i (%i)', M_len, R_len)
end

R = zeros(r,c);

i_r = 1;
i_c = 1;

for i_n = 1:n % it�ration par colonne
    for i_m = 1:m % it�ration par ligne
        R(i_r,i_c) = M(i_m,i_n);
        
        if i_r < r
            i_r = i_r + 1;
        else
            i_c = i_c + 1;
            i_r = 1;
        end
    end
end