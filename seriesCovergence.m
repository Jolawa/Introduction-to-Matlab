%2. Convergenceof infinite series
p = 0.99;
k = 0:1000;
geomSeries = p.^k;
G = sum(geomSeries); % Geometric series
G = 1 / (1 - p);
figure
plot([0, max(k)], [G G], 'r'); % Plot horizontal line
hold on
plot(k, cumsum(geomSeries),'b'); % Plot geomSeries to k
xlabel('Index')
ylabel('Sum')
title('Convergence of geometric series with p=0.99')
legend(['Infinite Sum'], ['Finite Sum'])
p = 2;
n = 1:500;
pSeries = 1 ./ n.^p; % Calculate the value of pSeries
P = pi^2/6; % Calculate the value of infinite p-series
figure
plot([0, max(n)], [P P], 'r') % Plot infinite series 
hold on
plot(n, cumsum(pSeries), 'b')
xlabel('Index')
ylabel('Sum')
title('Convergence of p-Series with p=2')
legend(['Infinite Sum'], ['Finite Sum'])
ylim([1 1.8])