% Semilog Plot
% y = 1:6; % Number of years
% s = [15, 25, 55, 115, 144, 242]; % Students
% semilogy(y, s, 'ms', MarkerSize=10, LineWidth=4);
% xlabel('Years');
% ylabel('Number of Students (log scale)');
% title('Number of Students in 6.057 Over 6 Years');
% xlim([0.5, 6.5]); % Adjust x limits to see all symbols
% grid on;
% Subplot and axis modes
% Load the file mitMap.mat
load('mitMap.mat');
figure('Units', 'pixels', 'Position', [100, 100, 800, 800]); % Create a new figure with a 2x2 grid of subplots
subplot(2, 2, 1); % Plot the image in the first subplot and set axis to be square
imagesc(mit);
colormap(cMap);
axis square;
title('Square Axis');
subplot(2, 2, 2); % Plot the image in the second subplot and set axis to be tight
imagesc(mit);
colormap(cMap);
axis tight;
title('Tight Axis');
subplot(2, 2, 3); % Plot the image in the third subplot and set axis to be equal
imagesc(mit);
colormap(cMap);
axis equal;
title('Equal Axis');
subplot(2, 2, 4); % Plot the image in the fourth subplot and set axis to be xy
imagesc(mit);
colormap(cMap);
axis xy;
axis tight;
title('XY Axis');
sgtitle('Subplots with Different Axis Settings'); % Adjust layout
%bar chart
x = rand(1,5)
sort(x)
bar(x, 'r')