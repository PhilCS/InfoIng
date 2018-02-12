function [N] = Seleca(M)
% Fichier fonction pour trier une matrice en ordre descendant selon
% l'algorithme du triage par sélection
% M : matrice initale
% N : matrice triée

[M_rows,M_cols] = size(M);
M = reshape(M, 1, M_rows * M_cols);
n = length(M);

for i = 1:n-1
    i_max = i;
    
    for j = i+1:n
        if M(j) > M(i_max)
            i_max = j;
        end
    end
    
    if i_max ~= i
        tmp = M(i);
        M(i) = M(i_max);
        M(i_max) = tmp;
    end
end

N = reshape(M, M_rows, M_cols)';