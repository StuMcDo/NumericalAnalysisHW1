f = @(x) x + exp(x);
f1 = @(x) 1 + exp(x);
X = linspace(-1,1, 1000);
p0 = -0.5
m = f1(p0)
x1 = p0 - f(p0)/f1(p0);
b = -m*x1
l = @(x) m*x + b; 
L = l(X);
Y = f(X);
plot(X,Y,X,L,p0,f(p0),'o',x1,0,'o')
title('f(x)=x + exp(x)','Interpreter','latex')
xlabel('x','Interpreter','latex')
ylabel('f(x)','Interpreter','latex')
legend('f(x)','tangent','p0','p1','Interpreter','latex')