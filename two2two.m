clear all
close all
clc
rtoe = pi/2; top = 3.8; mag1 = 2.2;
mag2 = 1.7; mag3 = 1.7
fs = 14; sf = 18; hside = 0.7*pi;
rhand = 0.4; vside = 1.2*pi
x1 = 0:.01:pi; x2 = 0:.01:pi/2;
plot(x1-rtoe,mag1.*sin(x1)-top,'k-','linewidth',2)
hold on
plot(x1-rtoe,-mag1.*sin(x1)+top,'k-','linewidth',2)
plot(x2+rhand,sqrt(mag2.*sin(x2)) + mag3.*x2,'k-','linewidth',2)
plot(x2+rhand,-sqrt(mag2.*sin(x2)) - mag3.*x2,'k-','linewidth',2)
plot(-x2-rhand,sqrt(mag2.*sin(x2)) + mag3.*x2,'k-','linewidth',2)
plot(-x2-rhand,-sqrt(mag2.*sin(x2)) - mag3.*x2,'k-','linewidth',2)
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Two-to-Two Scattering of Open Strings'
%title(textt,'Interpreter','latex','fontsize',sf)
textx='Space'
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty=('Time\,$\to$')
ylabel(texty,'Interpreter','latex','fontsize',sf)
axis([-hside hside -vside vside])
set(gca,'xtick',[],'ytick',[])
print -dpdf two2two.pdf
print -depsc two2two.eps
print -deps /Users/kevin/papers/math/two2two