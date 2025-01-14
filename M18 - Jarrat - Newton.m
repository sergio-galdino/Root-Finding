% Jarratt's  method
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
    t=t+2;
    dx=fx/f1x;
    y=x-(2/3)*dx;
    f1y=dfunc(y);
    t=t+1;
    x=x-(3*f1y+f1x)/(6*f1y-2*f1x)*dx;
    error=abs(x-y)
    if t == MAX break
      exit
    endif
end
endfunction
