clear all
close all
clc
x=10:.01:150;
fs = 14; sf = 16; 
Lambda = 0.230;
f = 12*pi./((33. - 10.)*2.*log(x/Lambda));
nf = 5.
b0 = (33. - 2.*nf)/(12.*4.*atan(1.))
b1 = (153. - 19.*nf)/(24.*(4.*atan(1.))^2)
b2 = (2857. - 5033.*nf/9. + 325.*nf^2/27.)/(128.*(4.*atan(1.0))^3)
g = (1./(b0*log((x/Lambda).^2))).*(1. - (b1*log(log((x/Lambda).^2)))./(b0^2*log((x/Lambda).^2)) + (b1^2*((log(log((x/Lambda).^2)).^2 - log(log((x/Lambda).^2)) - 1.)) + b0*b2)./(b0^4*(log((x/Lambda).^2)).^2))
x=10:.01:150;
plot(x,f,'k-','linewidth',1)
hold on
plot(x,g,'k-','linewidth',2)
axis([10  150  0.1  .22])
grid 'on'
%textt='$\!\!\!\!\!\!\!\!\!\!$Asymptotic Freedom'
%title(textt,'Interpreter','latex','fontsize',sf)
textx='Energy $E$ (GeV)'
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty=('Coupling strength $\alpha_s(E)$')
ylabel(texty,'Interpreter','latex','fontsize',sf)
print -dpdf asyfreebw
print -deps asyfreebw
print -deps /Users/kevin/papers/math/asyfreebw