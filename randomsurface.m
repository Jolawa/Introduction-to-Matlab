ZO = rand(5); % rand 5x5 matrix between 0 and 1
[XO, YO] = meshgrid(1:5); % vector from 1 to 5
[X1, Y1] = meshgrid(1:0.1:5) % X vector between 1 to 5 with 0.1 stepper
Z1 = interp2(XO,YO,ZO,X1,Y1, "cubic");
figure
surf(X1,Y1,Z1); % plot surface plot Z1
colormap("hsv");
shading interp;
hold on
contour(X1,Y1,Z1, 15, 'k');% 15 line contour black
colorbar;
caxis([0, 1]);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Random Surface with Cubic Interpolation')

% % Test with a vector
x = [1, 3, 5, 7, 9];
desiredVal = 6;
ind = findNearest(x, desiredVal);
disp(['Indices of nearest value(s) in vector: ', num2str(ind)]);

% Test with a matrix
x_matrix = [1, 2, 3; 4, 5, 6; 7, 8, 9];
desiredVal = 5.5;
ind = findNearest(x_matrix, desiredVal);
disp(['Indices of nearest value(s) in matrix: ', num2str(ind)]);

% % Loops and flow control
N = 10;
for n = 1:N
    d_2 = mod(n, 2) == 0;
    d_3 = mod(n, 3) == 0;
    if d_2 && d_3
        disp([num2str(n), ' is divisible by 2 and 3']);
    elseif d_2
        disp([num2str(n), ' is divisible by 2']);
    elseif d_3
        disp([num2str(n), ' is divisible by 3']);
    else
        disp([num2str(n), ' is not divisble by 2 and 3']);
    end
end
