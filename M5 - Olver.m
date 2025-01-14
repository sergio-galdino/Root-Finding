% Olver
%
%          Olver(func,dfunc,d2func,x,tol)
%
%          Olver's method
%
%          INPUT:    func      function  of  nonlinear equation;
%                    dfunc     derivative function of nonlinear equation;
%                    d2func    second derivative function of nonlinear equation;
%                    x    assumes that the root is initially near a;
%                    tol   used as stopping criterion.
%
function [x,t] = Olver(func,dfunc,d2func,x,tol)
error=1.1*tol;
t=0;
MAX=150;
while error > tol
    fx=func(x);
    f1x=dfunc(x);
    f2x=d2func(x);
    dx=-fx/f1x-(fx^2*f2x/f1x^3)/2;
    x=x+dx;
    error=abs(dx)
    t=t+3;
     if t == MAX break
      exit
    endif
end
endfunction
