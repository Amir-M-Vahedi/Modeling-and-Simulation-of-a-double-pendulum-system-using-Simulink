clc;clear all; close all;
%% Analytical Solution
syms x teta1(x) teta2(x)
teta1(x)=0.02169*cos(3.388*x)-0.01534*cos(8.18*x);
fplot(teta1,[0 5])
hold on
teta2(x)=1.414*(0.02169*cos(3.388*x)+0.01534*cos(8.18*x));
fplot(teta2,[0 5]);
grid on
title('Analytical Solution')
legend('\theta_1','\theta_2')
xlabel('Time [sec]')
ylabel('\theta [rad]')

%% Numerical Solution
sim('Double_Pendulum_Model.slx');
figure
plot(x1x2.Time,x1x2.Data);
grid on
legend('\theta_1','\theta_2')
title('Numerical Solution')
xlabel('Time [sec]')
ylabel('\theta [rad]')

%% Comparison Plots
figure
plot(x1x2.Time,x1x2.Data(:,1));
hold on
fplot(teta1,[0 5])
grid on
legend('Numerical','Analytical')
title('State Comparison')
xlabel('Time [sec]')
ylabel('\theta_1 [rad]')

figure
plot(x1x2.Time,x1x2.Data(:,2));
hold on
fplot(teta2,[0 5])
grid on
legend('Numerical','Analytical')
title('State Comparison')
xlabel('Time [sec]')
ylabel('\theta_2 [rad]')