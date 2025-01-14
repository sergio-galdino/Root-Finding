% Newton   Finds single roots of a function in given interval.
%
%           Newton(func,dfunc,x,tol)
%
%          INPUT:    func     function  of  nonlinear equation.
%                    dfunc    derivative function of nonlinear equation.
%                    x        initiall approximation
%                    tol      used as stopping criterion.
%
function [x,t] = Newton(func,dfunc,x,tol)
error=1.1*tol;
t=0;
MAX=100;
while error > tol
    Fx=func(x);
    Gx=dfunc(x);
    dx=Fx/Gx;
    x=x-dx;
    error=abs(dx)
    t=t+2;
    if t == MAX break
      exit
    endif
end
endfunction
