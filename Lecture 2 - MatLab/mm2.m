s=tf('s');
m=1;
l=5;
l1=10;
g=9.81;
sys=(1/(m*l^2))/(s^2+g/l);
sys1=(1/(m*l1^2))/(s^2+g/l1);
time = 1000
t=0:0.1:time;
y1=step(sys,t);
y2=step(sys1,t);
%% FIGURES
figure(1)
subplot(2,2,1)
plot(t,y1*57.3,'k-o')
hold on
plot(t,y2*57.3,'k--')
legend('angle [\Theta]','angle 2 [\Theta]')
title('Angle')
ylabel('Angle [\circ]')
xlabel('Time [s]')
axis([0 10 0 2.5])
grid minor
hold off
subplot(2,2,2)
pzmap(sys)
subplot(2,2,3)
bode(sys)
subplot(2,2,4)
plotyy(t,y1,t,y1*57.3)

%% EXPORT TO SIMULINK

[numer,denum] = tfdata(sys);

sim FirstTries.slx
plot(simout.Data)

%%
u=[1:0.1:100]
u=rand(1,10001);
lsim(sys,u,t)