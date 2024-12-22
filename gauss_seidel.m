n = input('Enter number of equations, n: ');
A = zeros(n, n+1);  % Augmented matrix
x1 = zeros(n, 1);  % Initial guess for solution
tol = input('Enter the tolerance, tol: ');
m = input('Enter maximum number of iterations, m: ');
A = [10 -5 -2 3; 4 -10 1 -3; 1 6 10 -3];  % Example augmented matrix
x1 = [0; 0; 0];  % Initial guess for solution vector
k = 1;

while k <= m
    err = 0;
    for i = 1:n
        s = 0;
        for j = 1:n
            s = s - A(i,j) * x1(j);  % Summing the terms
        end
        s = (s + A(i, n+1)) / A(i,i);  % Calculate new value for x1(i)
        
        if abs(s) > err
            err = abs(s);  % Track the largest error
        end
        
        x1(i) = x1(i) + s;  % Update solution vector
    end
    
    if err <= tol
        break;
    else
        k = k + 1;
    end
end

fprintf('Solution vector after %d iterations is:\n', k-1);
for i = 1:n
    fprintf(' %11.8f \n', x1(i));  % Display solution vector
end
