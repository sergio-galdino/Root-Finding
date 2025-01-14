% Modified derivative free Sariman's Three Step method Eq 12
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
    yt=y;
    fyt=fy;
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
    tg=(fy-fyt);
    if tg != 0
       f1y= tg/(y-yt);
    end
    L=(10*fy+4*fx)/(y-x)^2;
    z=y-fy/f1y-L*fy^2/(2*f1x^3);
    fz=func(z);
    t=t+1;
    error=abs(z-y)
    if error < tol
       x=y;
       break
    endif
    s=fy/fx;tz=fz/fy;u=fz/fx;
    G=1+2*s+tz+4*u+6*(s^2+s^3);
    x=z-G*fz/f1y;
    error=abs(x-z)
    fx=func(x);
    t=t+1;
    if t == MAX break
      exit
    endif
end
endfunction


