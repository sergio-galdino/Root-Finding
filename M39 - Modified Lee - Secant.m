% Modified Lee's method
%
%           Secant(func,dfunc,x,tol)
%
%
%          INPUT:    func     function  of  nonlinear equation
%                    x        initiall approximation;
%                    tol      used as stopping criterion.
%
function [x,t] = Secant(func,x,tol)
error=1.1*tol;
t=0;
MAX=200;
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
    s=fy/fx;
    z=y-(1+2*s)*fy/f1x;
    error=abs(z-y)
    if error < tol
        x=z;
        break
    endif
    fz=func(z);
    t=t+1;
    u=fz/fx;
    x=z-(1-2*s+u)/(1-4*s+7*s^2-6*s^3)*fz/f1x;
    error=abs(x-z)
    fx=func(x);
    t=t+1;
    if t == MAX break
      exit
    endif
end
endfunction
