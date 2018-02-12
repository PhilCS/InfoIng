% Philippe Carpentier-Savard
% Probl�me 3 - Travail Pratique 1 (MATLAB)

F1 = @(x1,x2) exp(x1) - 2*x2;
F2 = @(x1,x2) x1^2 + x2^2 - 25;

F11 = @(x1,x2) exp(x1); % d�riv�e partielle de F1 selon x1
F12 = @(x1,x2) 2; % d�riv�e partielle de F1 selon x2

F21 = @(x1,x2) 2*x1; % d�riv�e partielle de F2 selon x1
F22 = @(x1,x2) 2*x2; % d�riv�e partielle de F2 selon x2

% Justification : les valeurs initiales suivantes ont �t� choisies
% puisqu'elles se situent pr�s du point d'intersection � la droite sur le
% graphique des deux �quations

x1i = 3; % valeur initiale pour x1
x2i = 5; % valeur initiale pour x2

iter = 30; % nombre maximal d'it�rations
Err = 0.00001; % seuil d'erreur relative pour x1 et x2

[xsol,ysol] = NewRaph2(F1,F2,F11,F22,F12,F21,x1i,x2i,iter,Err)