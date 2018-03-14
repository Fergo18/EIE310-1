clear all;
clc;
vi = 1;
a = 0.9;
dt = 10e-3;
t(1) =0;
vf(1)=0;
for i=2 : 41;
    t(i)=(i-1) * dt;
    vf(i) =(1-a)* vi + a * vf(i-1);
end
close; stem(t,vf);
xlabel('seg'); grid