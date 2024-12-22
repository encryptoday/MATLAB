P = 1200; % Principal amount borrowed
r = 8 / 100; % Annual interest rate (as a decimal)
R = 200; % Payment amount per quarter
due = P; % Remaining amount to be paid
n = 0; % Payment counter
T = []; % Table to store payment details
paid = 0; % Total amount paid

while (due > 0)
    n = n + 1;
    due = due * (1 + r)^(0.25); % Update due with compounded interest
    if (due < R)
        R = due;
    end
    paid = paid + R; % Update the total amount paid
    due1 = due - R; % Calculate the remaining due after payment
    T(n, 1:5) = [n due R paid due1]; % Store details in the table
    due = due1; % Update due for the next iteration
end

% Extracting columns for readability
Payment_Number = T(:, 1);
To_Pay = T(:, 2);
Payment_Amount = T(:, 3);
Total_Paid = T(:, 4);
Due_Remained = T(:, 5);

% Displaying the results in a table
format short g
table(Payment_Number, To_Pay, Payment_Amount, Total_Paid, Due_Remained)

% Summary of the results
fprintf("Total %.2f years (%d months) it will take to pay the total borrowed amount\n", n / 4, n);
fprintf("Total Interest you have to pay = %.4f\n\n", paid - P);
