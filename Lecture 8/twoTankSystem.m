%syms('A1','A2','R1','R2');
A1=0.1;
A2=0.1;
R1=1;
R2=1;

s = tf('s');

Num=[1];
for A1=[0.1 1 10]
    for A2=[0.1 1 10]
        Den=[(A1 * A2 * R1 * R2) (A1 * R1 * R2 + A2 * R1 * R2) (R1 * R2)];
        sys=tf(Num,Den);
        figure
        step(sys,100)
    end
end
