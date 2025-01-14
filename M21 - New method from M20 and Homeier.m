% M21 - New method from M20 and Homeier
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
    y=x-(2/3)*fx/f1x;
    t=t+2;
    f1y=dfunc(y);
    t=t+1;
    x=x-fx/2*(1/f1x+1/f1y)*(1+(fx/f1x)^3)*(2-(7/4)*(f1y/f1x)+(3/4)*(f1y/f1x)^2);
    error=abs(x-y)
    if t == MAX break
      exit
    endif
end
endfunction
