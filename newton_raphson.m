a = input('Enter the function in the form of variable x: ', 's');
A = x^6 - x^4 - x^3 - 1;  % Define the function
x(1) = [1.4, 1.5];  % Initial guesses
error = input('Enter allowed Error: ');
Error = 1e-5;
f = inline(a);  % Create function handle
dif = diff(sym(a));  % Calculate derivative
d = inline(dif);  % Create function handle for derivative
for i = 1:100
    x(i+1) = x(i) - (f(x(i)) / d(x(i)));  % Apply Newton-Raphson method
    err(i) = abs((x(i+1) - x(i)) / x(i));  % Calculate error
    if err(i) < error  % Check if error is within acceptable limit
        break
    end
end
root = x(i);  % Final root value
