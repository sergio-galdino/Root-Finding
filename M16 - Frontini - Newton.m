% Frontini's  method
%
%           Newton(func,dfunc,x,tol)
%
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
    fma=dfunc((x+y)/2);
    t=t+1;
    x=x-fx/fma;
    error=abs(x-y)
    if t == MAX break
      exit
    endif
end
endfunction
