% Philippe Carpentier-Savard
% Probl�me 10-1 - Travail Pratique 1 (MATLAB)

z = 1.5; % profondeur (m)
t = 2.592e+6; % temps (s)
alpha = 0.128e-6; % diffusivit� thermique (m^2/s)

T_s = 20; % temp�rature surface (�C)
T_i = 10; % temp�rature initiale (�C)

Temp = @(z,t) erf(z ./ (2*sqrt(alpha*t))) * (T_i - T_s) + T_s;

T = Temp(z,t)

% voir Prob10_2 et Prob10_3