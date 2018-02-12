function [Rs] = Racine(s)
% Fichier fonction pour calculer une racine carrée par la méthode de Newton-Raphson
% s : nombre initial
% Rs : racine finale

if s < 0
    error('Le nombre "s" doit être positif')
end

imax = 25;
x = s;

for i = 1:imax
    f = x^2 - s;
    df = 2*x;
    x2 = x - f/df;
    E = abs((x2 - x) / x);
    x = x2;
    
    if E <= 0.00001
        break
    elseif i >= imax
        fprintf('La limite maximale de %i itérations a été atteinte\n', imax)
    end
end

Rs = x;