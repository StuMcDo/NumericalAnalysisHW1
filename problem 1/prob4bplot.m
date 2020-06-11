
p = 1000;
a = 135000;
n = 360;
f = @(i) p./i.*(1-(1+i).^(-n))-a;
f1 = @(i) -p./i.^2 - ((-n*p./i).*(1+i).^(-n+1) + (-p./i.^2).*(1+i).^-n);
X = linspace(0.0067496,0.0067502, 1000);
p0 = 0.00675;
m = f1(p0);
x1 = p0 - f(p0)/f1(p0);
Y1 = f1(X);
Y = f(X);
plot(X,Y)
title('$g(i)=p/i(1-(1+i)^{-n}-A$','Interpreter','latex')
xlabel('x','Interpreter','latex')
ylabel('y','Interpreter','latex')
legend('g(x)','Interpreter','latex')