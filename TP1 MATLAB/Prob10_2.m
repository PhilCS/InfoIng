% Philippe Carpentier-Savard
% Probl�me 10-2 - Travail Pratique 1 (MATLAB)

z = 1.0; % profondeur (m)
t = 2.678e+6; % temps (s)
alpha = 0.128e-6; % diffusivit� thermique (m^2/s)

T_s = 20; % temp�rature surface (�C)
T_i = 10; % temp�rature initiale (�C)

Temp = @(z,t) erf(z ./ (2*sqrt(alpha*t))) * (T_i - T_s) + T_s;

x_t = linspace(0,t,31);

plot(x_t, Temp(z,x_t))
title('Probl�me 10-2')
xlabel('t (s)')
ylabel('T (�C)')
axis([0 t 10 12.5])
grid on