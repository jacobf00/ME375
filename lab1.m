clc,clear,close

t = 0:.01:3;

damp = .1;
wn = 10;
wd = wn*sqrt(1 - damp^2);

c1 = .05025;
c2 = .5;

x = exp(-damp*wn*t).*(c1*sin(wd*t) + c2*cos(wd*t));

figure(1)
plot(t,x)
xlabel('time (s)')
ylabel('response (mm)')
title('displacement vs time')
hold on
%% plot experiment
texp = [.2039 .3975 .5357 .7707 .8952 1.158 1.441 1.766 2.063 2.561];

xexp = [-.1961 -.2592 .1961 .0645 -.1882 .0934 -.0539 .0434 -.0171 .0329];

plot(texp,xexp,'d')

legend('analytical','experimental')