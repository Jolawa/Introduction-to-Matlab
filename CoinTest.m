nf = 5000; % Number of coin flips
cf = rand(1, nf) < 0.5; % Simulate flipping a coin 5000 times
rp = cumsum(cf) ./ (1:nf); % Calculate the running estimate of the probability of getting 'heads'
plot(1:nf, rp, 'b', 'LineWidth', 1.5); % Plot the running estimate of the probability of getting 'heads'
hold on;
plot([1, nf], [0.5, 0.5], 'r--', 'LineWidth', 1.5); % Plot a horizontal line at the expected value of 0.5
xlabel('Number of Coin flips');
ylabel('Probability of Heads');
title('Sample Probability of Heads in n flips of a simulated coin');
legend('Sample Probability', 'Fair coin', 'Location', 'northeast');
grid on;
hold off; 