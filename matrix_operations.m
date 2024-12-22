% (a) Check whether the product of two numbers is positive, negative or zero
num1 = input('Enter first number: ');
num2 = input('Enter second number: ');
product = num1 * num2;
if product > 0
    disp('The product is positive.');
elseif product < 0
    disp('The product is negative.');
else
    disp('The product is zero.');
end

% (b) Interchange two rows/columns of a matrix
A = input('Enter a matrix: ');
row1 = input('Enter the first row to interchange: ');
row2 = input('Enter the second row to interchange: ');
A([row1, row2], :) = A([row2, row1], :); % Swap rows
disp('Matrix after row interchange:');
disp(A);

% Interchanging columns
col1 = input('Enter the first column to interchange: ');
col2 = input('Enter the second column to interchange: ');
A(:, [col1, col2]) = A(:, [col2, col1]); % Swap columns
disp('Matrix after column interchange:');
disp(A);

% (c) Update k values of a vector which has n entries, where k < n
vec = input('Enter a vector: ');
k = input('Enter the number of values to update: ');
if k < length(vec)
    for i = 1:k
        vec(i) = input(['Enter the new value for element ', num2str(i), ': ']);
    end
    disp('Updated vector:');
    disp(vec);
else
    disp('k must be less than the length of the vector.');
end

% (d) Check whether a matrix is diagonally dominant or not
A = input('Enter a square matrix to check if it is diagonally dominant: ');
n = size(A, 1);
is_diag_dom = true;
for i = 1:n
    sum_non_diag = sum(abs(A(i, :))) - abs(A(i, i));
    if abs(A(i, i)) < sum_non_diag
        is_diag_dom = false;
        break;
    end
end
if is_diag_dom
    disp('The matrix is diagonally dominant.');
else
    disp('The matrix is not diagonally dominant.');
end

% (e) Convert a matrix into diagonally dominant matrix
A = input('Enter a matrix to make it diagonally dominant: ');
n = size(A, 1);
for i = 1:n
    sum_non_diag = sum(abs(A(i, :))) - abs(A(i, i));
    if abs(A(i, i)) < sum_non_diag
        max_val = max(abs(A(i, :))) - abs(A(i, i));
        A(i, i) = sum_non_diag + max_val; % Adjust diagonal value
    end
end
disp('Matrix after conversion to diagonally dominant:');
disp(A);

% (f) Calculate the product of two matrices
A = input('Enter the first matrix: ');
B = input('Enter the second matrix: ');
if size(A, 2) == size(B, 1)
    product = A * B;
    disp('The product of the two matrices is:');
    disp(product);
else
    disp('Matrix dimensions do not match for multiplication.');
end

% (g) Find the pivot element from a matrix
A = input('Enter a matrix to find the pivot element: ');
pivot_element = A(1, 1); % Default to the first element
disp('The pivot element is:');
disp(pivot_element);

% (h) Swap two numbers
num1 = input('Enter the first number: ');
num2 = input('Enter the second number: ');
temp = num1;
num1 = num2;
num2 = temp;
disp('After swapping:');
disp(['First number: ', num2str(num1)]);
disp(['Second number: ', num2str(num2)]);
