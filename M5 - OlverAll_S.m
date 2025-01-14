format long
T=0;
tol = 1e-14
'#####   1'
f = @(x)x^3-1
g = @(x)3*x^2
h = @(x)6*x
[root,t]=Olver(f,g,h,1.5,tol)
f(root)
T=T+t;
'#####   2'
f =@(x)x^2*(x^2/3+sqrt(2)*sin(x))-sqrt(3)/18
g =@(x)2*x*(x^2/3+sqrt(2)*sin(x))+(2*x/3+sqrt(2)*cos(x))*x^2
h = @(x)4*x*(2*x/3+sqrt(2)*cos(x))+2*x^2/3-x^2*(sqrt(2)*sin(x)-2/3)+2*sqrt(2)*sin(x)
[root,t]=Olver(f,g,h,1,tol)
f(root)
T=T+t;
'#####   3'
f =@(x)11*x^11-1
g =@(x)121*x^10
h =@(x)1210*x^9
[root,t]=Olver(f,g,h,0.8,tol)
f(root)
T=T+t;
'#####   4'
f = @(x)x^3+1
g = @(x)3*x^2
h = @(x)6*x
[root,t]=Olver(f,g,h,-1.8,tol)
f(root)
T=T+t;
'#####   5'
f = @(x)x^3-2*x-5
g = @(x)3*x^2-2
h = @(x)6*x
[root,t]=Olver(f,g,h,2,tol)
f(root)
T=T+t;
'#####   6'
f = @(x)2*x*exp(-5)+1-2*exp(-5*x)
g = @(x)2*exp(-5)+10*exp(-5*x)
h = @(x)-50*exp(-5*x)
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   7'
f = @(x)2*x*exp(-10)+1-2*exp(-10*x)
g = @(x)2*exp(-10)+20*exp(-10*x)
h = @(x)-200*exp(-10*x)
[root,t]=Olver(f,g,h,0.04,tol)
f(root)
T=T+t;
'#####   8'
f = @(x)2*x*exp(-20)+1-2*exp(-20*x)
g = @(x)40*exp(-20*x)+2*exp(-20)
h = @(x)-800*exp(-20*x)
[root,t]=Olver(f,g,h,0.04,tol)
T=T+t;
'#####   9'
f = @(x)(1+(1-5)^2)*x-(1-5*x)^2
g = @(x)27-50*x
h = @(x)-50
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   10'
f = @(x)(1+(1-10)^2)*x-(1-10*x)^2
g = @(x)102-200*x
@(x)-200
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   11'
f = @(x)(1+(1-20)^2)*x-(1-20*x)^2
g = @(x)402-800*x
h = @(x)-800
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   12'
f = @(x)x^2-(1-x)^5
g = @(x)2*x+5*(x-1)^4
h = @(x)2+20*(x-1)^3
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   13'
f = @(x)x^2-(1-x)^10
g = @(x)2*x-10*(x-1)^9
h = @(x)2-90*(x-1)^8
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   14'
f =  @(x)x^2-(1-x)^20
g =  @(x)2*x-20*(x-1)^19
h =  @(x)2-380*(x-1)^18
[root,t]=Olver(f,g,h,0.9,tol)
f(root)
T=T+t;
'#####   15'
f =  @(x)(1+(1-5)^4)*x-(1-5*x)^4
g =  @(x)257-20*(5*x-1)^3
h =  @(x)-300*(5*x-1)^2
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   16'
f =   @(x)(1+(1-10)^4)*x-(1-10*x)^4
g =   @(x)6562-40*(10*x-1)^3
h =   @(x)-1200*(10*x-1)^2
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   17'
f =    @(x)(1+(1-20)^4)*x-(1-20*x)^4
g =    @(x)130322-80*(20*x-1)^3
h =    @(x)-4800*(20*x-1)^2
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   18'
f =   @(x)exp(-5*x)*(x-1)+x^5
g =   @(x)exp(-5*x)+5*x^4-5*exp(-5*x)*(x-1)
h =   @(x)20*x^3-10*exp(-5*x)+25*exp(-5*x)*(x-1)
[root,t]=Olver(f,g,h,0,tol)
f(root)
T=T+t;
'#####   19'
f =  @(x)exp(-10*x)*(x-1)+x^10
g =  @(x)exp(-10*x)+10*x^9-10*exp(-10*x)*(x-1)
h =  @(x)90*x^8-20*exp(-10*x)+100*exp(-10*x)*(x-1)
[root,t]=Olver(f,g,h,1,tol)
f(root)
T=T+t;
'#####   20'
f =  @(x)exp(-20*x)*(x-1)+x^20
g =  @(x)exp(-20*x)+20*x^19-20*exp(-20*x)*(x-1)
h =  @(x)380*x^18-40*exp(-20*x)+400*exp(-20*x)*(x-1)
[root,t]=Olver(f,g,h,0.2,tol)
f(root)
T=T+t;
'#####   21'
f = @(x)x^2+sin(x/5)-1/4
g = @(x)2*x+cos(x/5)/5
h = @(x)2-sin(x/5)/25
[root,t]=Olver(f,g,h,1,tol)
f(root)
T=T+t;
'#####   22'
f =  @(x)x^2+sin(x/10)-1/4
g =  @(x)2*x+cos(x/10)/10
h =  @(x)2-sin(x/10)/100
[root,t]=Olver(f,g,h,0.2,tol)
f(root)
T=T+t;
'#####   23'
f = @(x)x^2+sin(x/20)-1/4
g = @(x)2*x+cos(x/20)/20
h = @(x)2-sin(x/20)/400
[root,t]=Olver(f,g,h,0.3,tol)
f(root)
'TNFE'
T=T+t




