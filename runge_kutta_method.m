h = 0.5;
x = 0:h:100;  % Define x from 0 to 100 with step size h
Y = zeros(1, length(x));  % Initialize Y array
y(1) = 1;  % Initial condition y(0) = 1

F_xy = @(t, r) 3 * exp(-t) - 0.4 * r;  % Define the function F(x, y)

for i = 1:(length(x) - 1)
    k_1 = F_xy(x(i), y(i));  % Calculate k1
    k_2 = F_xy(x(i) + 0.5 * h, y(i) + 0.5 * h * k_1);  % Calculate k2
    k_3 = F_xy(x(i) + 0.5 * h, y(i) + 0.5 * h * k_2);  % Calculate k3
    k_4 = F_xy(x(i) + h, y(i) + h * k_3);  % Calculate k4
    
    y(i + 1) = y(i) + (1 / 6) * (k_1 + 2 * k_2 + 2 * k_3 + k_4) * h;  % Update y using Runge-Kutta method
end

Z = x ./ (a + x).^2;  % Example of another computation (assuming 'a' is defined)

plot(x, y, 'o-', x, Z, '--');  % Plot the results
