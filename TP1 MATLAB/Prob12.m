% Philippe Carpentier-Savard
% Problème 12 - Travail Pratique 1 (MATLAB)

fn = @(x) exp(sin(x));
a = 0;
b = 1;

% ceci peut prendre une dizaine de secondes pour s'exécuter
n = 1000:1000:100000;
n_len = length(n);

I_test = zeros(1,n_len);

for i = 1:n_len
    I_test(1,i) = MonteCarlo(fn,a,b,n(i));
end

plot(n, I_test)
title('Problème 12')
xlabel('n essais')
ylabel('Int')

% On remarque que la fonction converge vers environ 1.6319
% Ceci devient plus évident avec une plus grande plage n,
% mais cela prend plusieurs minutes à exécuter.