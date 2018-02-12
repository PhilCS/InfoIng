% Philippe Carpentier-Savard
% Problème 10-2 - Travail Pratique 1 (MATLAB)

z = 1.0; % profondeur (m)
t = 2.678e+6; % temps (s)
alpha = 0.128e-6; % diffusivité thermique (m^2/s)

T_s = 20; % température surface (°C)
T_i = 10; % température initiale (°C)

Temp = @(z,t) erf(z ./ (2*sqrt(alpha*t))) * (T_i - T_s) + T_s;

x_t = linspace(0,t,31);

plot(x_t, Temp(z,x_t))
title('Problème 10-2')
xlabel('t (s)')
ylabel('T (°C)')
axis([0 t 10 12.5])
grid on