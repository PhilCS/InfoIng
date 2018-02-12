% Philippe Carpentier-Savard
% Problème 7 - Travail Pratique 1 (MATLAB)

x_min = -3.5;
x_max = 7.5;
y_min = -1000;
y_max = 1000;

x = linspace(x_min,x_max);

plot(x, DifPuis(x,5))
hold on
plot(x, DifPuis(x,10))
plot(x, DifPuis(x,15))
hold off

title('Problème 7')
legend('Y1(x,5)', 'Y1(x,10)', 'Y1(x,15)', 'Location', 'NorthWest')
axis([x_min x_max y_min y_max])
grid on