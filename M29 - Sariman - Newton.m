% Sariman's method 
%
%           Newton(func,dfunc,x,tol)
%
%
%          INPUT:    func     function  of  nonlinear equation.
%                    dfunc    derivative function of nonlinear equation.
%                    x        initiall approximation
%                    tol      used as stopping criterion.
%
function [x,t] = Newton(func,dfunc,x,tol)
error=1.1*tol;
t=0;
MAX=200;
while error > tol
    fx=func(x);
    f1x=dfunc(x);
    y=x-fx/f1x;
    t=t+2;
    error=abs(x-y)
    if error < tol
        x=y;
        break
    endif
    fy=func(y);
    t=t+1;
    L=(10*fy+4*fx)/(y-x)^2;
    z=y-fy/f1x-L*fy^2/(2*f1x^3);
    error=abs(z-y)
    if error < tol
        x=z;
        break
    endif
    fz=func(z);
    t=t+1;
    s=fy/fx;tz=fz/fy;u=fz/fx;
    G=1+2*s+tz+4*u+6*(s^2+s^3);
    x=z-G*fz/f1x;
    error=abs(x-z)
    if t == MAX break
      exit
    endif
end
endfunction
