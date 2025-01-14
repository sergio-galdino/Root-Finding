% Steffenssen   Finds single roots of a function.
%
%           Steffenssen(func,x,tol)
%
%
%          INPUT:    func     function  of  nonlinear equation.
%                    x        initiall approximation
%                    tol      used as stopping criterion.
%
function [x,t] = Steffenssen(func,x,tol)
error=1.1*tol;
t=0;
MAX=100;
while error > tol
    fx=func(x);
    gx=func(x+fx)-fx;
    if gx == 0
      'zero divided'      break
    endif
    dx=fx^2/gx;
    x=x-dx;
    error=abs(dx)
    t=t+2;
    if t > MAX
      break
    endif
end
endfunction
