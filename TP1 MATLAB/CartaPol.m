function [r,d] = CartaPol(x,y)
% Fichier fonction pour convertir des coordonn�es cart�siennes en format polaire
% x : position en x
% y : position en y
% r : distance par rapport � l'origine
% d : angle en degr�s par rapport � l'origine

r = sqrt(x^2 + y^2);
d = acosd(x/r);

if y < 0
    d = 360 - d;
end