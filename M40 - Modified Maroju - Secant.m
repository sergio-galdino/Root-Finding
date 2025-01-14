%  Modified Maroju's method
%
%          Secant(func,x,tol)
%
%
%          INPUT:    func     function  of  nonlinear equation.
%                    x        initiall approximation
%                    tol      used as stopping criterion.
%
function [x,t] = Secant(func,x,tol)
error=1.1*tol;
t=0;
beta=0;
MAX=200;
fx=func(x);
y=x+fx/2;
fy=func(y);
while error > tol
    tg=(fy-fx);
    if tg != 0
      f1x= tg/(y-x);
    end
    y=x-fx/f1x;
    t=t+1;
    error=abs(x-y)
    if error < tol
        x=y;
        break
    endif
    fy=func(y);
    t=t+1;
    z=y-(fx+beta*fy)/(fx+(beta-2)*fy)*fy/f1x;
    error=abs(z-y)
    if error < tol
        x=y;
        break
    endif
    fz=func(z);
    t=t+1;
    u=fz/fy;v=fy/fx;a1=2*(beta^2-6*beta+6)/(2*beta-5);a2=(2*beta-5)/a1;
    x=z-(1+4*u*v+u-(4*beta+1)*v/(2*(beta^2-6*beta+6))+ a2/(a1*v+1) )*fz/f1x;
    error=abs(x-z)
    fx=func(x);
    y=z;
    fy=fz;
    t=t+1;
    if t == MAX break
      exit
    endif
end
endfunction

