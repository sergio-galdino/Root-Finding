% Modified Secant   Finds single roots of a function.
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
    fx=func(x);
    b=a;
    m=1-fx/fb;
    if m < 0
     m=fb/(fb+fx)
    endif
    fb=fa*m;
    fa=fx;
    a=x;
    t=t+1;
    if t == MAX break
      exit
    endif
end
endfunction
