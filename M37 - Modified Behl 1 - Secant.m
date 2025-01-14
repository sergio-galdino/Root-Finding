% Modified Behl1 alpha = 1
%
%           Secant(func,x,tol)
%
%
%          INPUT:    func     function  of  nonlinear equation.
%                    x        initiall approximation
%                    tol      used as stopping criterion.
%
function [x,t] = Secant(func,x,tol)
error=1.1*tol;
t=2;
MAX=200;
alpha=1;
gamma1=2*(alpha-2);
gamma2=2*(alpha-1);
fx=func(x);
x1=x+fx/2;
fx1 =func(x1);
while error > tol
    df=(fx1-fx)/(x1-x);
    x1=x-fx/df;
    error=abs(x1-x)
    if error < tol
      x=x1;
      break
    endif
    fx1=func(x1);
    t=t+1;
    A=(fx1*(fx*(2-gamma1+gamma2)+2*fx1*gamma2))/( 4*df*(fx+fx1*gamma2) );
    B=( 4*fx^2+2*gamma2*(alpha-1)*fx1^2+fx*fx1*(-2+gamma1+3*gamma2+alpha*(2-gamma1+gamma2)) );
    C=( 4*fx^2-2*fx1^2*gamma2+fx*fx1*(-2+gamma1+gamma2) );
    x=x1-A*B/C;
    fx=func(x);
    t=t+1;
    error=abs(x-x1)
    if t == MAX break
      exit
    endif
end
endfunction
