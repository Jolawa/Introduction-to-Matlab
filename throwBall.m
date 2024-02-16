%1. Throwing Ball
h = 1.5; % Initial height of ball at release
g = 9.8; % Gravitational acceleration 
v = 4; % Velocity of ball at release
avvt = 0.25 * pi; % 45 degrees
t = linspace(0,1,1000); % time vector with 1000 linearly spaced values between 0 and 1
xt = v * cos(avvt)*t; % distance
yt = h + v * sin(avvt) * t - 0.5 * g * t.^2; % Calculate height
ind = find(yt < 0, 1); % Index at which height becomes negative
x = xt(ind); % Distance at which the ball touch the ground
disp(['The ball hits the ground at a distance of ' num2str(x) ' meters'])
figure
plot(xt, yt);
xlabel('Distance (m)');
ylabel('Ball height (m)');
title('Ball Trajectory');
hold on
plot([0, max(xt)], [0, 0], 'k--')