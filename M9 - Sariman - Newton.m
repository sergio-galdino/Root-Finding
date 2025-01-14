% Sariman Equação 8
%
%           Sariman's Method
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
    if t> 2
      error=abs(x-y)
         if error < tol
        x=y;
        break
      endif
    endif
    fy=func(y);
    t=t+1;
    L=(10*fy+4*fx)/(y-x)^2;
    x=y-fy/f1x-L*fy^2/(2*f1x^3);
    error=abs(x-y)
    if t == MAX break
      exit
    endif
end
endfunction
