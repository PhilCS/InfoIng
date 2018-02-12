% Philippe Carpentier-Savard
% Problème 11 - Travail Pratique 1 (MATLAB)

x_min = 0;
x_max = 1.5;
steps = 10;

y_prime = @(x,y) -1.1*y + 6*exp(-0.3*x);

figure(1)
[t,y] = RungeKutta(y_prime, x_min, x_max, 3, steps);
hold on

sol_exacte = @(x) 7.5*exp(-0.3*x) - 4.5*exp(-1.1*x);
x = linspace(0, 1.5);

plot(x, sol_exacte(x))
hold off

title('Problème 11')
xlabel('x')
ylabel('y')
legend('Runge-Kutta', 'Sol. exacte', 'Location', 'SouthEast')

