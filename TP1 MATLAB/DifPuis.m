function Y1 = DifPuis(x,N)
% Fichier fonction pour l'approximation de la solution en utilisant N+1 termes
% x : valeur en X
% N : limite supérieure de la sommation
% Y1 : résultat en Y

    function a = a_n(n)
        if n > 1
            a = (-3*(n-1) * a_n(n-1) + (n+1) * a_n(n-2)) / (2*(n-1) * n);
        elseif n > 0
            a = 1;
        else
            a = 0;
        end
    end

    Y1 = 0;
    
    for n = 0:N
        Y1 = Y1 + (a_n(n) * (x - 2).^n);
    end
end