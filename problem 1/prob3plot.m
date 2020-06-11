y = @(x) 2*sin(pi*x)+x;
g = @(x) -2*sin(pi*x)
X = linspace(1,2, 100);
Y = y(X);
Y1 = g(X);
Z = zeros(1,100);
plot(X,Y,X,Z,X,Y1,X,X);
title('prob3','Interpreter','latex')
xlabel('x','Interpreter','latex')
ylabel('y','Interpreter','latex')
legend('f(x)','Interpreter','latex')