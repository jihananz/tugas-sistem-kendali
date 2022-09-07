%Jihan Aanisa Zulfaani
%21/480765/PA/20904
%TUGAS 1

clear
clc
T = 1
num = 1
denum = [T,1]
G = tf(num, denum)
s = tf('s')

figure
subplot(311), step(G);
subplot(312), step(G/s);
subplot(313), impulse(G);

info = stepinfo(G)

[y,t] = step(G)
y(length(y))
plot(t,y);
xlabel('Time (sec)');
ylabel('Amplitude');
title('step responce');

SP=5;
[y,t]=step(SP*G);
sserror=abs(SP-y(end))
