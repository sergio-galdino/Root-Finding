%     Behl's method alpha =2
%     
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
alpha=2;
gamma1=2*(alpha-2);
gamma2=2*(alpha-1);
while error > tol
    fx=func(x);
    f1x=dfunc(x);
    y=x-fx/f1x;
    t=t+2;
    error=abs(x-y)
    if error < tol
        x=y;
        break
      endif
    fy=func(y);
    t=t+1;
    A=(fy*(fx*(2-gamma1+gamma2)+2*fy*gamma2))/( 4*f1x*(fx+fy*gamma2) );
    B=( 4*fx^2+2*gamma2*(alpha-1)*fy^2+fx*fy*(-2+gamma1+3*gamma2+alpha*(2-gamma1+gamma2)) );
    C=( 4*fx^2-2*fy^2*gamma2+fx*fy*(-2+gamma1+gamma2) );
    x=y-A*B/C;
    error=abs(x-y)
    if t == MAX break
      exit
    endif
end
endfunction
