clear all
close all
clc
rtoe = pi/2; top = 3.8; mag1 = 2.2;
mag2 = 1.7; mag3 = 1.7
fs = 14; sf = 18; hside = 0.45*pi;
rhand = 0.4; vside = 0.9*pi;
th1 = 0.72; th2 = 0.87; th4 = 0.5; th5 = .5;
x1 = th1:.01:pi-th1; x2 = 0:.01:pi/2-th2;
x3 = 0:0.01:2*pi; r = 0.136; xo = 0.965; yo = 2.27;
x4 = th4:0.01:pi+.3; x5 = -.2:0.01:pi-th5;
plot(x1-rtoe,mag1.*sin(x1)-top,'k-','linewidth',2)
hold on
plot(x1-rtoe,-mag1.*sin(x1)+top,'k-','linewidth',2)
plot(x2+rhand,sqrt(mag2.*sin(x2)) + mag3.*x2,'k-','linewidth',2)
plot(x2+rhand,-sqrt(mag2.*sin(x2)) - mag3.*x2,'k-','linewidth',2)
plot(-x2-rhand,sqrt(mag2.*sin(x2)) + mag3.*x2,'k-','linewidth',2)
plot(-x2-rhand,-sqrt(mag2.*sin(x2)) - mag3.*x2,'k-','linewidth',2)
plot(r.*cos(x3)+xo,r.*sin(x3)-yo,'k-','linewidth',2)
plot(-r.*cos(x3)-xo,r.*sin(x3)-yo,'k-','linewidth',2)
plot(r.*cos(x5)+xo,r.*sin(x5)+yo,'k-','linewidth',2)
plot(r.*cos(x4)-xo,r.*sin(x4)+yo,'k-','linewidth',2)
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Two-to-Two Scattering of Closed Strings'
%title(textt,'Interpreter','latex','fontsize',sf)
textx='Space'
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty=('Time\,$\to$')
ylabel(texty,'Interpreter','latex','fontsize',sf)
axis([-hside hside -vside vside])
set(gca,'xtick',[],'ytick',[])
print -dpdf two2twoclosed.pdf
print -depsc two2twoclosed.eps
print -deps /Users/kevin/papers/math/two2twoclosed