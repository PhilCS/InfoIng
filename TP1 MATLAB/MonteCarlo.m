function [I] = MonteCarlo(fn,a,b,n)
% Fichier fonction qui pour évaluer une intégrale définie selon la méthode de Monte-Carlo
% fn : fonction à intégrer
% a : borne inférieure
% b : borne supérieure
% n : nombre de tentatives
% I : résultat final

x0 = linspace(a,b,n);
y0 = fn(x0);
y_max = max(y0);

hit = 0;

for i = 1:n
    x = (b - a) * rand + a;
    y = y_max * rand;

    if y < fn(x)
        hit = hit + 1;
    end
end

I = (hit/n) * y_max * (b - a);