%  Nazeer
%
%          Olver(func,dfunc,d2func,a,tol)
%
%          Nazeer's method
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
    f1y=dfunc(y);
    x=y-fy/f1y*(1-(f1y*f1x*fy-f1x^2*fx)/(2*f1y^2*fx));
    error=abs(x-y)
    t=t+2;
    if t == MAX break
      exit
    endif
end
endfunction
