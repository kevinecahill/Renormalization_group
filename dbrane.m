clear all
close all
clc
a = 1/2; fs = 16; r = 1/4;
x0 = 0; y0 = 0; x1 = 1; y1 = x1+a
x = 0:.01:1/2; xl = 0:.01:1;
th1 = -pi/4:.01:pi/4
plot(x0*ones(size(xl)),xl,'k-','linewidth',2)  
hold on
plot(x,a*x,'k-','linewidth',2)  
plot(x,x1+a*x,'k-','linewidth',2)  
plot(a*x1*ones(size(xl)),a/2+xl,'k-','linewidth',2) 
plot(r*cos(th1),r*sin(th1)+.4,'k-','linewidth',2) 
plot(r*cos(th1)+.15,r*sin(th1)+.8,'k-','linewidth',2) 
set(gca,'xticklabel',[],'yticklabel',[]);
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Two Strings Stuck on a D2-Brane'
%title(textt,'Interpreter','latex','FontSize',fs)
axis([-.2 .7 -.25 1.5])
%axis('square')
print -dpdf dbrane.pdf
print -depsc dbrane.eps
print -deps /Users/kevin/papers/math/dbrane