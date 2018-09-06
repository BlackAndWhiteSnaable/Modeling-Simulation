%% SETUP
s=tf('s');
NUM = [1];
DEN = [0.5 0.5 1];
sys = tf(NUM,DEN);

figure('Name','Exercise 2')
pzmap(sys)