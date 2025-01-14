% Modified Chun
%
%           Secant(func,x,tol)
%
%
%          INPUT:    func     function  of  nonlinear equation.
%                    x        initiall approximation
%                    tol      used as stopping criterion.
%
function [x,t] = Secant(func,x,tol)
error=1.1*tol;
t=2;
MAX=200;
fx=func(x);
x1=x+fx/2;
fx1 =func(x1);
while error > tol
    df=(fx1-fx)/(x1-x);
    x1=x-fx/df;
    error=abs(x1-x)
    if error < tol
      x=x1;
      break
    endif
    fx1=func(x1);
    t=t+1;
    x=x1-fx^2/(fx^2-2*fx*fx1+2*fx1^2)*fx1/df;
    fx=func(x);
    t=t+1;
    error=abs(x-x1)
    if t == MAX break
      exit
    endif
end
endfunction


