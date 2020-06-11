g = @(x) x.^3-25;

X = linspace(2,3, 100);
Y = g(X);
Z = zeros(1,100);
plot(X,Y,X,Z);
title('prob2.b','Interpreter','latex')
xlabel('x','Interpreter','latex')
ylabel('y','Interpreter','latex')
legend('x^3-25','Interpreter','latex')