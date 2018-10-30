clear all
close all
clc
fs = 14; sf = 16; 
baryonRes;
x = 0.8:.01:3.0
Js = sum(br(:,2).*br(:,1).^2)
EE = sum(br(:,1).^4)
a = Js/EE 
%a = 0.921274;   
plot(x,a*x.^2,'k-','linewidth',2)
hold on
plot(br(:,1),br(:,2),'k+','linewidth',2,'markersize',12)
axis([0.8  2.8  0  6])
grid 'on'
%textt='Regge Trajectory of the Nucleon and Delta'
%title(textt,'Interpreter','latex','fontsize',sf)
textx='Energy $E = m c^2$ (GeV)'
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty=('Spin $J/\hbar$')
ylabel(texty,'Interpreter','latex','fontsize',sf)
text('Interpreter','latex','String','$N(938)$','Position',[1.01,0.5],'FontSize',sf)
text('Interpreter','latex','String','$\Delta(1232)$','Position',[1.35,1.5],'FontSize',sf)
text('Interpreter','latex','String','$N(1680)$','Position',[1.76,2.5],'FontSize',sf)
text('Interpreter','latex','String','$\Delta(1950)$','Position',[2.03,3.5],'FontSize',sf)
text('Interpreter','latex','String','$N(2220)$','Position',[2.30,4.5],'FontSize',sf)
text('Interpreter','latex','String','$\Delta(2420)$','Position',[2.50,5.5],'FontSize',sf)
print -dpdf NDResReggebw
print -deps NDResReggebw
print -deps /Users/kevin/papers/math/NDResReggebw