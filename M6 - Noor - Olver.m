%  Noor order 6
%
%          Olver(func,dfunc,d2func,a,tol)
%
%          Noor's method
%
%          INPUT:    func      function  of  nonlinear equation;
%                    dfunc     derivative function of nonlinear equation;
%                    d2func    second derivative function of nonlinear equation;
%                    a    assumes that the root is initially near a;
%                    tol   used as stopping criterion.
%
function [x,t] = Olver(func,dfunc,d2func,x,tol)
error=1.1*tol;
t=0;
MAX=50;
while error > tol
    fx=func(x);
    f1x=dfunc(x);
    y=x-fx/f1x;
    t=t+2;
    if t> 1
      error=abs(x-y)
      if error < tol
        x=y;
        break
      endif
    endif
    fy=func(y);
    f1y=dfunc(y);
    f2y=d2func(y);
    x=y-fy/f1y-(fy^2*f2y/f1y^3)/2;
    error=abs(x-y)
    t=t+3;
    if t == MAX break
      exit
    endif
end
endfunction
