% Newton Two Step
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
    x=y-fy/f1x;
    error=abs(x-y)
    if t == MAX break
      exit
    endif
end
endfunction
