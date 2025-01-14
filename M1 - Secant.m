% Secant   Finds single roots of a function.
%
%           Secant(func,x,tol)
%
%
%          INPUT:    func     function  of  nonlinear equation.
%                    x        initial approximation of root
%                    tol      used as stopping criterion.
%
function [x,t] = Secant(func,x,tol)
error=1.1*tol;
t=2;
MAX=50;
a=x;
fa=func(x);
b=x+fa/2;
fb=func(b);
while error > tol
    x=(a*fb-b*fa)/(fb-fa);
    error=abs(x-a)
    b=a;
    fb=fa;
    fa=func(x);
    a=x;
    t=t+1;
    if t == MAX break
      exit
    endif
end
endfunction
