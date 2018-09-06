%% Linearize sin(x), x^2, cos(x)
%SETUP
syms x;
nolsin = sin(x);
nolqua = qua(x);
nolcos = cos(x);
x0=0;
x1=0.1;
x2=0.5;
x3=10;


%% For loop testing
X=[x0 x1 x2 x3];
for i = 1:4
    % linearize
    linsini = lintaylor(nolsin,x,X(i),3);
    linquai = lintaylor(nolqua,x,X(i),3);
    lincosi = lintaylor(nolcos,x,X(i),3);
    
    %find location
    siny=feval('sin',X(i));
    quay=feval('qua',X(i));
    cosy=feval('cos',X(i));
    
    % plot
    % Plotting around X(i)
    figure(1)
    subplot(1,4,i)
    fplot(linsini,'r')
    hold on
    fplot(nolsin,'k')
    hold off
    axis([X(i)-5 X(i)+5 -2 2])
    title(['Sine linearization around x0=' num2str(X(i))])
    grid on

    figure(2)
    subplot(1,4,i)
    fplot(linquai,'r')
    hold on
    fplot(nolqua,'k')
    hold off
    axis([X(i)-5 X(i)+5 quay-5 quay+5])
    title(['Quadratic linearization around x0=' num2str(X(i))])
    grid on

    figure(3)
    subplot(1,4,i)
    fplot(lincosi,'r')
    hold on
    fplot(nolcos,'k')
    hold off
    axis([X(i)-5 X(i)+5 -2 2])
    title(['Cosine linearization around x0=' num2str(X(i))])
    grid on
end
