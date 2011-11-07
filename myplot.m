function [ ] = myplot( Kp, Kd )
%MYPLOT Plot our system step response given Kp and Kd

s = tf('s');
d = 4;
J = 5;
num = d/J*Kp;
den = s^2 + d/J*Kd*s + d/J*Kp;
G = num/den;
step(G, 0:0.01:12);

end

