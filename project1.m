clc
clear vars

% step(G)
Vg =800; 
Ra= 0.052;
La= 1e-3;
fsw= 2000;
kii= (2*pi*fsw*Ra)/(10*Vg);
kpi= (2*pi*fsw*La)/(10*Vg);
te= 1/(kii*Vg/Ra);
%a= 1.921; %35
%a=1+sqrt(2); %45
a=sqrt(3)+2; %60
P=250*745.7;
Ke=3.65;
tauf=1/(2*pi*10);
%tauf=0.1;
J= 5;
kpw= J/(a*Ke*(te+tauf));
kiw= kpw/((a*a)*(te+tauf));
wmr=1250;
taul=P/(wmr*pi/30);
Va=Ke*wmr*pi/30;
Ia=P/Va;

taui=Ra/(kii*Vg);