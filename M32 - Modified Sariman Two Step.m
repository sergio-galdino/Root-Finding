% Modified derivative free Sariman's Two Step method - Eq 8
%
%  Finds single roots of a function.
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
fx=func(x);
y=x+fx/2;
fy=func(y);
while error > tol
    tg=(fy-fx);
    if tg != 0
      f1x= tg/(y-x);
    end
    y=x-fx/f1x;
    fy=func(y);
    t=t+1;
    error=abs(y-x)
    if error < tol
       x=y;
       break
    endif
    tg=(fy-fx);
    if tg != 0
      f1y= tg/(y-x);
    end
    L=(10*fy+4*fx)/(y-x)^2;
    x=y-fy/f1x-L*fy^2/(2*f1x^3);
    fx=func(x);
    error=abs(x-y)
    if t == MAX break
      exit
    endif
    t=t+1;
end




