%% SETUP
syms pos vel;
m=100;
l=10;
g=9.81;
A=[0 1 ; -g/l 0];
B=[0 ; 1/m*l^2];
C=[1 0];
D=0;
x=[pos ; vel];
sys = ss(A,B,C,D);

eig(A)
% Eigenvalues of A show whether the model is stable

CO = ctrb(sys);
rank(CO)
%if CO is full row rank (rank equal to amount of rows) it is contralable

OB = obsv(sys);
rank(OB)