function [ output ] = lintaylor( func,x, x0, ord )
%LINTAYLOR Linearization by taylor
%   linearising input func around x0, up to the order ord using x as the
%   variable.
    output = taylor(func,x,x0,'Order',ord+1);
end