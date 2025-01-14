% Lee's method
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
    if t == MAX break
      exit
    endif
end
endfunction
