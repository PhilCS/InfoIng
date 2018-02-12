% Philippe Carpentier-Savard
% Problème 10-1 - Travail Pratique 1 (MATLAB)

z = 1.5; % profondeur (m)
t = 2.592e+6; % temps (s)
alpha = 0.128e-6; % diffusivité thermique (m^2/s)

T_s = 20; % température surface (°C)
T_i = 10; % température initiale (°C)

Temp = @(z,t) erf(z ./ (2*sqrt(alpha*t))) * (T_i - T_s) + T_s;

T = Temp(z,t)

% voir Prob10_2 et Prob10_3