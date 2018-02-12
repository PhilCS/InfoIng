function ellipse_trace(xc,yc,a,b,angle)
% Fichier fonction pour tracer une ellipse
% xc = centre de l'ellipse en X
% yc = centre de l'ellipse en Y
% a = demi-longueur des axes horizontaux
% b = demi-longueur des axes verticaux
% angle = angle de rotation en degrés

step = 0:360;

x = 2*a * cosd(step);
y = 2*b * sind(step);

xy_rot = [cosd(angle) -sind(angle); sind(angle) cosd(angle)] * [x; y];

x = xy_rot(1,:) + xc;
y = xy_rot(2,:) + yc;

plot(x,y)
axis equal