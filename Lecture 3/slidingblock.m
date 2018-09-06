s=tf('s');
m=1000;
b=100;
u=100;
%% Transfer function model with given parameters
TF=tf(1/(s^2*m+s*b));
figure(1)
hold on;
grid on;
subplot(2,2,1)  %creatig a subplot for the pole-zero map
pzmap(TF)
grid on
axis([-0.2 0.2 -1 1])   %change axis [Xmin Xmax Ymin Ymax]
subplot(2,2,2)  %creating a subplot for the step-response
step(TF)
subplot(2,2,3)  %creating a subplot for the bode plot
bode(TF)
subplot(2,2,4)  %subplot for the system

%% Transfer function model with changed parameters
m=10;
b=400;
u=100;
TF=tf(1/(s^2*m+s*b));
figure(2)
hold on;
grid on;
subplot(2,2,1)  %creatig a subplot for the pole-zero map
pzmap(TF)
%axis([-0.2 0.2 -1 1])   %change axis [Xmin Xmax Ymin Ymax]
subplot(2,2,2)  %creating a subplot for the step-response
step(TF)
subplot(2,2,3)  %creating a subplot for the bode plot
bode(TF)
%% State-space model
syms x;
syms v;
syms u;
A=[0 1
   0 -(b/m)];
B=[0
   1/m];
C=[0 1];
x=[x
   v];
xdot=A*x+B*u
y   =C*x%+D*u; D is not existent

