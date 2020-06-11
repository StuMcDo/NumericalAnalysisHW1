
%%%%secant method%%%%%%%

f = @(x) x + exp(x);
f1 = @(x) 1 + exp(x);
X = linspace(-1,0, 1000);
p0 = -1/4;
p1 = -3/4;
y0 = f(p0);
y1 = f(p1);
X1 = [p0 p1];
Y1 = [y0 y1];
Y = f(X);
plot(X,Y,X1,Y1,p0,y0,'o',p1,y1,'o',x1,0,'o')
title('f(x)=x + exp(x): false position','Interpreter','latex')
xlabel('x','Interpreter','latex')
ylabel('f(x)','Interpreter','latex')
legend('f(x)','tangent','p0','p1','p','Interpreter','latex')