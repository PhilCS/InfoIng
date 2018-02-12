function [xsol1,xsol2] = NewRaph2(F1,F2,F11,F22,F12,F21,x1i,x2i,iter,Err)
% Fichier fonction pour r�soudre deux �quations non-lin�aires par la m�thode de Newton-Raphson
% F1 : premi�re �quation
% F2 : deuxi�me �quation
% F11 : d�riv�e partielle de F1 selon x1
% F12 : d�riv�e partielle de F1 selon x2
% F21 : d�riv�e partielle de F2 selon x1
% F22 : d�riv�e partielle de F2 selon x2
% x1i : valeur initiale pour x1
% x2i : valeur initiale pour x2
% iter : nombre maximal d'it�rations
% Err : seuil d'erreur relative pour x1 et x2
% xsol1 : r�sultat final pour x1
% xsol2 : r�sultat final pour x2

xsol1 = x1i;
xsol2 = x2i;

for i = 1:iter
    Jacob = F11(x1i,x2i) * F22(x1i,x2i) - F21(x1i,x2i) * F12(x1i,x2i);
    
    dx1 = (-F1(x1i,x2i) * F22(x1i,x2i) + F2(x1i,x2i) * F12(x1i,x2i)) / Jacob;
    dx2 = (-F2(x1i,x2i) * F11(x1i,x2i) + F1(x1i,x2i) * F21(x1i,x2i)) / Jacob;
    
    xsol1 = x1i + dx1;
    xsol2 = x2i + dx2;
    
    E_x = abs((xsol1 - x1i) / x1i);
    E_y = abs((xsol2 - x2i) / x2i);
    
    if E_x <= Err && E_y <= Err
        break
    end
    
    x1i = xsol1;
    x2i = xsol2;
end