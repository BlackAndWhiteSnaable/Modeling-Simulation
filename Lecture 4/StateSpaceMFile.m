%% example script to try callbacks from simulink
clear;clc
stopTime = 10;
stepSize = 0.001;
T = [0:stepSize:stopTime];

d=0.5;
I=2.5;

A=[0 1 ; 0 0];
B=[0 ; d/I];
C=[1 0];
D=[0];

%create the state space model as sys
sys=ss(A,B,C,D)

step(sys,T)