% Philippe Carpentier-Savard
% Problème 1 - Travail Pratique 1 (MATLAB)

n = 4:8;
n_len = length(n);

rep_exp = zeros(1,n_len);
rep_E = zeros(1,n_len);

format long

for i = 1:n_len
    [rep_exp(i), rep_E(i)] = TaylorExp(n(i));
end

table(n', rep_exp', rep_E', 'VariableNames', {'n' 'expmin2' 'E'})