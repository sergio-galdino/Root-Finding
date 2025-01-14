% Newton Three-Steps method
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
    error=abs(y-x)
    if error < tol
        x=y;
        break
    endif
    fy=func(y);
    t=t+1;
    z=y-fy/(fy-fx)*(y-x);
    % z=y-fy/f1x;
    error=abs(z-y)
    if error < tol
        x=z;
        break
    endif
    fz=func(z);
    t=t+1;
    x=z-fz/(fz-fy)*(z-y);
    % x=z-fz/f1x;
    error=abs(x-z)
    if t == MAX break
      exit
    endif
end
endfunction


