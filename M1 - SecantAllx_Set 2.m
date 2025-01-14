format long
T=0;
tol = 1e-14
% Solaiman
'#####   1'
f = @(x)cos(x)-x
[root,t]=Secant(f,0,tol)
f(root)
T=T+t;
'#####   2'
f =@(x)sin(x)^2-x^2+1
[root,t]=Secant(f,1,tol)
f(root)
T=T+t;
'#####   3'
f =@(x)log(x^2-x+1)-4*sin(x-1)
[root,t]=Secant(f,1.5,tol)
f(root)
T=T+t;
'#####   4'
f = @(x)exp(-x^2)+cos(x)-x^2
[root,t]=Secant(f,1,tol)
f(root)
T=T+t;
'#####   5'
f = @(x)atan(x)-x^2+1
[root,t]=Secant(f,1.5,tol)
f(root)
T=T+t;
'#####   6'
function y= f6(x)
  if (x < 0)
    y=x*(x+1);
   else
    y=-2*x*(x-1);
endif
endfunction
f = @(x)f6(x)
[root,t]=Secant(f,0.6,tol)
f(root)
T=T+t;
% Behl / Sariman
'#####   7'
f = @(x)sin(x)^2-x^2+1
[root,t]=Secant(f,6,tol)
f(root)
T=T+t;
'#####   8'
f = @(x)x^6-10*x^3+x^2-x+3
[root,t]=Secant(f,0.5,tol)
f(root)
T=T+t;
'#####   9'
f = @(x)8*x^4-62.326*x^3+117.956*x^2+20.088*x-13.392
[root,t]=Secant(f,0.5,tol)
f(root)
T=T+t;
% Comemuang
'#####   10'
f = @(x)sin(x)+cos(x)+x
[root,t]=Secant(f,-0.5,tol)
f(root)
T=T+t;
'#####   11'
f = @(x)x*exp(x^2)-sin(x)^2+3*cos(x)+5;
[root,t]=Secant(f,-1.2,tol)
f(root)
T=T+t;
'#####   12'
f = @(x)(x+2)*exp(x)-1;
[root,t]=Secant(f,-0.4,tol)
f(root)
T=T+t;
'#####   13'
f =  @(x)x^3-2*x^2-5
[root,t]=Secant(f,2.5,tol)
f(root)
T=T+t;
'#####   14'
f =  @(x)cos(x)-x;
[root,t]=Secant(f,1.7,tol)
f(root)
T=T+t;
'#####   15'
f =   @(x)(x-1)*exp(-x)
[root,t]=Secant(f,0.5,tol)
f(root)
T=T+t;
% Soleymani
'#####   16'
f =    @(x)sin(x)^2+x;
[root,t]=Secant(f,0.3,tol)
f(root)
T=T+t;
'#####   17'
f =   @(x)(1+x^3)*cos(pi*x/2)+sqrt(1-x^2)-2*(9*sqrt(2)+7*sqrt(3))/27
[root,t]=Secant(f,0.3,tol)
f(root)
T=T+t;
'#####   18'
f =  @(x)exp(-x)+sin(x)-1
[root,t]=Secant(f,2.0,tol)
f(root)
T=T+t;
'#####   19'
f =  @(x)x*exp(-x)-0.1
[root,t]=Secant(f,0.3,tol)
f(root)
T=T+t;
'#####   20'
f = @(x)x^2+sin(x)+x
[root,t]=Secant(f,0.3,tol)
f(root)
T=T+t;
'#####   21'
f =  @(x)sin(2*cos(x))-1-x^2+exp(sin(x^3))
[root,t]=Secant(f,1.3,tol)
f(root)
T=T+t;
'#####   22'
f = @(x)sin(2*cos(x))-1-x^2+exp(sin(x^3))
[root,t]=Secant(f,-0.8,tol)
f(root)
T=T+t;
'#####   23'
f = @(x)cos(x)+sin(2*x)*sqrt(1-x^2)+sin(x^2)+x^14+x^3+1/(2*x)
[root,t]=Secant(f,-0.9,tol)
f(root)
T=T+t;
'#####   24'
f = @(x)tan(log(x))+cos(x^3)*sqrt(1/(2*x))
[root,t]=Secant(f,0.44,tol)
f(root)
T=T+t;
'#####   25'
f = @(x)atan(x)-1
[root,t]=Secant(f,1.6,tol)
f(root)
T=T+t;
'#####   26'
f = @(x)x^6-10*x^3+x^2-x+3
[root,t]=Secant(f,0.7,tol)
f(root)
T=T+t;
'#####   27'
f = @(x)x^4-x^3+11*x-7
[root,t]=Secant(f,0.85,tol)
f(root)
T=T+t;
'#####   28'
f = @(x)x^3-cos(x)+2
[root,t]=Secant(f,-1,tol)
f(root)
T=T+t;
'#####   29'
f = @(x)sqrt(x)-cos(x)
[root,t]=Secant(f,0.9,tol)
f(root)
T=T+t;
'#####   30'
f = @(x)log(x)-x^3+2*sin(x)
[root,t]=Secant(f,1.2,tol)
f(root)
'TNFE'
T=T+t




