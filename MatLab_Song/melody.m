fs = 44100;% sample rate 
dt = 1/fs;
T16 = 0.125;
t16 = [0:dt:T16];
[temp k] = size(t16);
t4 = linspace(0,4*T16,4*k);
t8 = linspace(0,2*T16,2*k);

[temp i] = size(t4);
[temp j] = size(t8);

%modification functions
mod4 = (t4.^4).*exp(-30*(t4.^0.5));
mod4 = mod4/max(mod4);
mod8 = (t8.^4).*exp(-50*(t8.^0.5));
mod8 = mod8/max(mod8);
mod16 = (t16.^4).*exp(-90*(t16.^0.5));
mod16 = mod16/max(mod16);

f0 = 2*146.8; % reference frequency

ScaleTable = [2/3 3/4 5/6 15/16 1 9/8 5/4 4/3 3/2 5/3 9/5 15/8 ...
    2 9/4 5/2 8/3 3 10/3 15/4 4 1/2 9/16 5/8];

% 1/4 
do0f = mod4.*cos(2*pi*ScaleTable(21)*f0*t4);
re0f = mod4.*cos(2*pi*ScaleTable(22)*f0*t4);
mi0f = mod4.*cos(2*pi*ScaleTable(23)*f0*t4);
fa0f = mod4.*cos(2*pi*ScaleTable(1)*f0*t4);
so0f = mod4.*cos(2*pi*ScaleTable(2)*f0*t4);
la0f = mod4.*cos(2*pi*ScaleTable(3)*f0*t4);
xi0f = mod4.*cos(2*pi*ScaleTable(4)*f0*t4);

do1f = mod4.*cos(2*pi*ScaleTable(5)*f0*t4);
re1f = mod4.*cos(2*pi*ScaleTable(6)*f0*t4);
mi1f = mod4.*cos(2*pi*ScaleTable(7)*f0*t4);
fa1f = mod4.*cos(2*pi*ScaleTable(8)*f0*t4);
so1f = mod4.*cos(2*pi*ScaleTable(9)*f0*t4);
la1f = mod4.*cos(2*pi*ScaleTable(10)*f0*t4);
xb1f = mod4.*cos(2*pi*ScaleTable(11)*f0*t4);
xi1f = mod4.*cos(2*pi*ScaleTable(12)*f0*t4);

do2f = mod4.*cos(2*pi*ScaleTable(13)*f0*t4);
re2f = mod4.*cos(2*pi*ScaleTable(14)*f0*t4);
mi2f = mod4.*cos(2*pi*ScaleTable(15)*f0*t4);
fa2f = mod4.*cos(2*pi*ScaleTable(16)*f0*t4);
so2f = mod4.*cos(2*pi*ScaleTable(17)*f0*t4);
la2f = mod4.*cos(2*pi*ScaleTable(18)*f0*t4);
xi2f = mod4.*cos(2*pi*ScaleTable(19)*f0*t4);

do3f = mod4.*cos(2*pi*ScaleTable(20)*f0*t4);
b1kf = zeros(1,i);

% 1/8

do0e = mod8.*cos(2*pi*ScaleTable(21)*f0*t8);
re0e = mod8.*cos(2*pi*ScaleTable(22)*f0*t8);
mi0e = mod8.*cos(2*pi*ScaleTable(23)*f0*t8);
fa0e = mod8.*cos(2*pi*ScaleTable(1)*f0*t8);
so0e = mod8.*cos(2*pi*ScaleTable(2)*f0*t8);
la0e = mod8.*cos(2*pi*ScaleTable(3)*f0*t8);
xi0e = mod8.*cos(2*pi*ScaleTable(4)*f0*t8);

do1e = mod8.*cos(2*pi*ScaleTable(5)*f0*t8);
re1e = mod8.*cos(2*pi*ScaleTable(6)*f0*t8);
mi1e = mod8.*cos(2*pi*ScaleTable(7)*f0*t8);
fa1e = mod8.*cos(2*pi*ScaleTable(8)*f0*t8);
so1e = mod8.*cos(2*pi*ScaleTable(9)*f0*t8);
la1e = mod8.*cos(2*pi*ScaleTable(10)*f0*t8);
xb1e = mod8.*cos(2*pi*ScaleTable(11)*f0*t8);
xi1e = mod8.*cos(2*pi*ScaleTable(12)*f0*t8);

do2e = mod8.*cos(2*pi*ScaleTable(13)*f0*t8);
re2e = mod8.*cos(2*pi*ScaleTable(14)*f0*t8);
mi2e = mod8.*cos(2*pi*ScaleTable(15)*f0*t8);
fa2e = mod8.*cos(2*pi*ScaleTable(16)*f0*t8);
so2e = mod8.*cos(2*pi*ScaleTable(17)*f0*t8);
la2e = mod8.*cos(2*pi*ScaleTable(18)*f0*t8);
xi2e = mod8.*cos(2*pi*ScaleTable(19)*f0*t8);
do3e = mod8.*cos(2*pi*ScaleTable(20)*f0*t8);

b1ke = zeros(1,j);

% 1/16

do0s = mod16.*cos(2*pi*ScaleTable(21)*f0*t16);
re0s = mod16.*cos(2*pi*ScaleTable(22)*f0*t16);
mi0s = mod16.*cos(2*pi*ScaleTable(23)*f0*t16);
fa0s = mod16.*cos(2*pi*ScaleTable(1)*f0*t16);
so0s = mod16.*cos(2*pi*ScaleTable(2)*f0*t16);
la0s = mod16.*cos(2*pi*ScaleTable(3)*f0*t16);
xi0s = mod16.*cos(2*pi*ScaleTable(4)*f0*t16);

do1s = mod16.*cos(2*pi*ScaleTable(5)*f0*t16);
re1s = mod16.*cos(2*pi*ScaleTable(6)*f0*t16);
mi1s = mod16.*cos(2*pi*ScaleTable(7)*f0*t16);
fa1s = mod16.*cos(2*pi*ScaleTable(8)*f0*t16);
so1s = mod16.*cos(2*pi*ScaleTable(9)*f0*t16);
la1s = mod16.*cos(2*pi*ScaleTable(10)*f0*t16);
xb1s = mod16.*cos(2*pi*ScaleTable(11)*f0*t16);
xi1s = mod16.*cos(2*pi*ScaleTable(12)*f0*t16);

do2s = mod16.*cos(2*pi*ScaleTable(13)*f0*t16);
re2s = mod16.*cos(2*pi*ScaleTable(14)*f0*t16);
mi2s = mod16.*cos(2*pi*ScaleTable(15)*f0*t16);
fa2s = mod16.*cos(2*pi*ScaleTable(16)*f0*t16);
so2s = mod16.*cos(2*pi*ScaleTable(17)*f0*t16);
la2s = mod16.*cos(2*pi*ScaleTable(18)*f0*t16);
xi2s = mod16.*cos(2*pi*ScaleTable(19)*f0*t16);
do3s = mod16.*cos(2*pi*ScaleTable(20)*f0*t16);

b1ks = zeros(1,k);

v1 = [ do0f re0f mi0f fa0f so0f la0f xi0f ...
    do1f re1f mi1f fa1f so1f la1f xi1f do3f];
%v1 = v1/max(v1);
sound(v1,fs);


