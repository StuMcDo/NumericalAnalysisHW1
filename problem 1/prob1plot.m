f = @(x) x + exp(x)
X = linspace(-3,3, 100);
Y = f(X);
plot(X,Y)
title('f(x)=x + exp(x)','Interpreter','latex')
xlabel('x','Interpreter','latex')
ylabel('f(x)','Interpreter','latex')
legend('f(x)','Interpreter','latex')