format long
T=0;
'#####   1'
f = @(x)x^3-1
[root,t]=Steffenssen(f,1.5,tol)
f(root)
T=T+t;
'#####   2'
f =@(x)x^2*(x^2/3+sqrt(2)*sin(x))-sqrt(3)/18
[root,t]=Steffenssen(f,1,tol)
f(root)
T=T+t;
'#####   3'
f =@(x)11*x^11-1
[root,t]=Steffenssen(f,0.8,tol)
f(root)
T=T+t;
'#####   4'
f = @(x)x^3+1
[root,t]=Steffenssen(f,-1.8,tol)
f(root)
T=T+t;
'#####   5'
f = @(x)x^3-2*x-5
[root,t]=Steffenssen(f,2,tol)
f(root)
T=T+t;
'#####   6'
f = @(x)2*x*exp(-5)+1-2*exp(-5*x)
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   7'
f = @(x)2*x*exp(-10)+1-2*exp(-10*x)
[root,t]=Steffenssen(f,0.04,tol)
f(root)
T=T+t;
'#####   8'
f = @(x)2*x*exp(-20)+1-2*exp(-20*x)
[root,t]=Steffenssen(f,0.04,tol)
f(root)
T=T+t;
'#####   9'
f = @(x)(1+(1-5)^2)*x-(1-5*x)^2
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   10'
f = @(x)(1+(1-10)^2)*x-(1-10*x)^2
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   11'
f = @(x)(1+(1-20)^2)*x-(1-20*x)^2
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   12'
f = @(x)x^2-(1-x)^5
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   13'
f = @(x)x^2-(1-x)^10
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   14'
f =  @(x)x^2-(1-x)^20
[root,t]=Steffenssen(f,0.9,tol)
f(root)
T=T+t;
'#####   15'
f =  @(x)(1+(1-5)^4)*x-(1-5*x)^4
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   16'
f =   @(x)(1+(1-10)^4)*x-(1-10*x)^4
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   17'
f =    @(x)(1+(1-20)^4)*x-(1-20*x)^4
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   18'
f =   @(x)exp(-5*x)*(x-1)+x^5
[root,t]=Steffenssen(f,0,tol)
f(root)
T=T+t;
'#####   19'
f =  @(x)exp(-10*x)*(x-1)+x^10
[root,t]=Steffenssen(f,1,tol)
f(root)
T=T+t;
'#####   20'
f =  @(x)exp(-20*x)*(x-1)+x^20
[root,t]=Steffenssen(f,0.2,tol)
f(root)
T=T+t;
'#####   21'
f = @(x)x^2+sin(x/5)-1/4
g = @(x)2*x+cos(x/5)/5
[root,t]=Steffenssen(f,1,tol)
f(root)
T=T+t;
'#####   22'
f =  @(x)x^2+sin(x/10)-1/4
[root,t]=Steffenssen(f,0.2,tol)
f(root)
T=T+t;
'#####   23'
f = @(x)x^2+sin(x/20)-1/4
g = @(x)2*x+cos(x/20)/20
[root,t]=Steffenssen(f,0.3,tol)
f(root)
T=T+t

