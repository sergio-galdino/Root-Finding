%
%
%          Halley(func,dfunc,d2func,a,tol)
%
%          Halley's method
%
%          INPUT:    func      function  of  nonlinear equation;
%                    dfunc     derivative function of nonlinear equation;
%                    d2func    second derivative function of nonlinear equation;
%                    a    assumes that the root is initially near a;
%                    tol   used as stopping criterion.
%
function [x,t] = Halley(func,dfunc,d2func,x,tol)
error=1.1*tol;
t=0;
MAX=50;
while error > tol
    fx=func(x);
    f1x=dfunc(x);
    f2x=d2func(x);
    dx=fx/f1x;
    Dx=(1-dx*f2x/(2*f1x));
    x=x-dx/Dx;
    error=abs(dx/Dx)
    t=t+3;
     if t == MAX break
      exit
    endif
end
endfunction
