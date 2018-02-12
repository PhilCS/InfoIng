function [Rs] = Racine(s)
% Fichier fonction pour calculer une racine carr�e par la m�thode de Newton-Raphson
% s : nombre initial
% Rs : racine finale

if s < 0
    error('Le nombre "s" doit �tre positif')
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
        fprintf('La limite maximale de %i it�rations a �t� atteinte\n', imax)
    end
end

Rs = x;