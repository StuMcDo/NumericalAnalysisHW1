g = @(x) -exp(x);

X = linspace(-1,1, 100);
Y = g(X);
plot(X,Y,X,X)
title('g(x)= -exp(x)','Interpreter','latex')
xlabel('x','Interpreter','latex')
ylabel('g(x)','Interpreter','latex')
legend('g(x)','y=x','Interpreter','latex')