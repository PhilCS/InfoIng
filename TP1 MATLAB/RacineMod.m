function [sol] = RacineMod(x0)
% Version modifi�e de la fonction "Racine" pour d�terminer la solution de
% f(x) = x^3 + 2x^2 - 5 par la m�thode de Newton-Raphson
% x0 : nombre initial
% sol : r�sultat final

imax = 25;
x = x0;

for i = 1:imax
    f = x^3 + 2*x^2 - 5;
    df = 3*x^2 + 4*x;
    x2 = x - f/df;
    E = abs((x2 - x) / x);
    x = x2;
    
    if E <= 0.00001
        break
    elseif i >= imax
        fprintf('La limite maximale de %i it�rations a �t� atteinte\n', imax)
    end
end

sol = x;