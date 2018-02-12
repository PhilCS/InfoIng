% Philippe Carpentier-Savard
% Problème 10-3 - Travail Pratique 1 (MATLAB)


t = 2.592e+6; % temps (s)
alpha = 0.128e-6; % diffusivité thermique (m^2/s)

T_s = 20; % température surface (°C)
T_i = 10; % température initiale (°C)

Temp = @(z,t) erf(z ./ (2*sqrt(alpha*t))) * (T_i - T_s) + T_s;

t_min = 0;
t_max = t;
z_min = 0;
z_max = 3;
steps = 31;

x_t = linspace(t_min, t_max, steps);
y_z = linspace(z_min, z_max, steps);

[x_t,y_z] = meshgrid(x_t, y_z);

z_T = arrayfun(Temp, y_z, x_t);

figure
surf(x_t, y_z, z_T)

title('Problème 10-3')
xlabel('t (s)')
ylabel('z (m)')
zlabel('T (°C)')
axis([t_min t_max z_min z_max T_i T_s])
colorbar