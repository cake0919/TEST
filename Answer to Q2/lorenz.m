clc;
clear all;
close all;
h=0.01
t=0:h:1
n=length(t)
t(1)=0
s(1)=0
for i=1:n-1
    k1=h*fun(t(i),s(i));
    k2=h*fun(t(i)+h/2,s(i)+k1*1/2);
    k3=h*fun(t(i)+h/2,s(i)+k2*1/2);
    k4=h*fun(t(i)+h,s(i)+k3);
    s(i+1)=s(i)+(k1*2+k2+2*k3+k4)/6;
end
%plot(t,s)%P
% plot(t,10-s)%s
%plot(t,(10-s).*(17.5-s).^(-1))%ES
 plot(t,1-(10-s).*(17.5-s).^(-1))%E