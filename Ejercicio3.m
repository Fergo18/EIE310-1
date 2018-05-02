X=[1 1 1 0 0 0 0];
N = [1 2 3 4 5 6 7];
A=[1,-1,0.9];
B=1;
[X,N] = impulso(0,-20,100);
H=filter(B,A,X);
subplot 321; plot (N,H);
title('Respuesta Impulso')
xlabel ('N'); grid
%Convolucion
x=[zeros(1,16) ones(1,10) zeros(1,30)];
nx=-5:50;
[e,nh]=escalon(0,-5,50);
h=(0.8.^nh).*e;
[y,ny]=convol(x,nx,h,nh);
subplot 322;stem(nx,x);axis([-10 60 0 1]);title ('x(n)');grid
subplot 323;stem(nh,h);axis([-10 60 0 1]);title ('h(n)');grid
subplot 324;stem(ny,y);axis([-10 60 0 1]);title ('y(n)');grid

