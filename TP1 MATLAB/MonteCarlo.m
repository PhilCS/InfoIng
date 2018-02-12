function [I] = MonteCarlo(fn,a,b,n)
% Fichier fonction qui pour �valuer une int�grale d�finie selon la m�thode de Monte-Carlo
% fn : fonction � int�grer
% a : borne inf�rieure
% b : borne sup�rieure
% n : nombre de tentatives
% I : r�sultat final

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