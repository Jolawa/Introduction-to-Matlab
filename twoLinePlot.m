% Name: Olawale Olabode
%Matric No: 239047017
%Programme: Master of Engineering Systems Management

%7. Plotting multiples lines and colors
figure
t = linspace(0,2*pi,100);
plot(t, sin(t))
hold on
plot(t, cos(t),"r");
xlabel('Time (s)');
ylabel('Function value');
title('Sin and Cos functions');
legend({'sin', 'cos'},'Location','northeast');
xlim([0 2*pi]);
ylim([-1.4 1.4]);