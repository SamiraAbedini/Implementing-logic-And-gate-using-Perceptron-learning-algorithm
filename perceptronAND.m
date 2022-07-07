% implementation of AND logical operator by perceptron learning algorithm
% Samira Abedini, Mina Saeedzadeh, Sana Beygmohammadi
x=[1 1 0 0;1 0 1 0];
t=[1 -1 -1 -1];
w=[0 0];
b=0;
alpha=1;
tetha=0.2;
epoch      %every epoch function gives the final w and b in the existing epoch
z=isequal(y,t);   %compares y matrix with t matrix
while z==0        %runnig the ephoches
epoch
z=isequal(y,t);
end
if z==1
disp('the final weight matrix is:')
disp(w)
disp('and the final bias value is:')
disp(b)
end
plot(x(1,1),x(2,1),'+g',...
'linewidth',5,...
'markersize',20,...
'markerfacecolor',[0,0,1]);
hold on;
plot(x(1,2),x(2,2),'or',...
'linewidth',5,...
'markersize',20,...
'markerfacecolor',[1,0,0]);
hold on;
plot(x(1,3),x(2,3),'or',...
'linewidth',5,...
'markersize',20,...
'markerfacecolor',[1,0,0]);
hold on;
plot(x(1,4),x(2,4),'or',...
'linewidth',5,...
'markersize',20,...
'markerfacecolor',[1,0,0]);
hold on;
m=-(w(1)/w(2));
c=(-b/w(2))+(tetha/w(2));
x1=linspace(-2,2,1000);
x2=m*x1+c;
plot(x2,x1,'b')
c=(-b/w(2))+(tetha/w(2));
x2=m*x1+c;
x1=linspace(-2,2,1000);
plot(x2,x1,'b')
m=-(w(1)/w(2));
c=(-b/w(2))+(-tetha/w(2));
x1=linspace(-2,2,1000);
x3=m*x1+c;
plot(x3,x1,'b')
axis([-1 2 -1 2]);
xlabel('x1')
ylabel('x2')
title('implementation of AND logical operator by perceptron learning algorithm')
