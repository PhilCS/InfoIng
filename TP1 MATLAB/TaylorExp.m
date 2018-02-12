function [S,E] = TaylorExp(n_max)
% Fichier fonction pour simuler la fonction exp(-2) par d�veloppement de Taylor
% n_max : nombre de termes
% S : r�sultat de la sommation
% E : erreur relative finale

x = -2; % exposant
S = 0;
E = 1;

for n = 0:1:n_max
    S_n = S;
    S = S + x^n / factorial(n);
    E = abs((S - S_n) / S_n);
end