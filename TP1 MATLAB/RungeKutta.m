function [t,y] = RungeKutta(fn,a,b,y0,n)
% Fichier fonction pour tracer une équation différentielle par la méthode
% classique de Runge-Kutta (quatrième ordre)
% fn : fonction dérivée (y')
% a : valeur minimale pour x
% b : valeur maximale pour x
% y0 : valeur initiale pour y
% n : nombre de subdivisions

t = zeros(1,n);
y = zeros(1,n);

h = (b-a)/(n-1);

t(1) = a;
y(1) = y0;

for i = 1:n-1
    k1 = h * fn(t(i), y(i));
    k2 = h * fn(t(i) + h/2, y(i) + k1/2);
    k3 = h * fn(t(i) + h/2, y(i) + k2/2);
    k4 = h * fn(t(i) + h, y(i) + k3);
    y(i+1) = y(i) + (1/6)*(k1 + 2*k2 + 2*k3 + k4);
    t(i+1) = t(i) + h;
end

plot(t,y,'-rs')
