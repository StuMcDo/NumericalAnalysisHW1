g = @(x) tan(x);
y = @(x) tan(x)-x;
X = linspace(4, 4.6 , 100);
Y = g(X);
Y1 = y(X);
Z = zeros(1,100);
plot(X,Y,X,X,X,Y1,X,Z)
title('problem 2.a ','Interpreter','latex')
xlabel('x','Interpreter','latex')
ylabel('y','Interpreter','latex')
legend('g(x)','y=x','tan(x)-x','Interpreter','latex')