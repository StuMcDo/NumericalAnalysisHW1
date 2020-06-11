g = @(x)(x.^2-3)/2;
f = @(x)x.^2-2*x-3; 
X = linspace(-5,5, 100);
Y = g(X);
Y1 = f(X);
plot(X,Y,X,X,X,Y1,-1,-1,'o',3,3,'o')
title('prob5','Interpreter','latex')
xlabel('x','Interpreter','latex')
ylabel('y','Interpreter','latex')
legend('g(x)','y=x','f(x)','-1,-1','3,3','Interpreter','latex')