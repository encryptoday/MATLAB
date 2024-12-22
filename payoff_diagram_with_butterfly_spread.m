% Define stock prices and strike prices
Stock_Price = 50:0.5:130;
K = [80, 90, 100];

% Calculate the payoff for Call and Put Butterfly Spreads
Payoff_Call = max(Stock_Price - K(1), 0) - 2 * max(Stock_Price - K(2), 0) + max(Stock_Price - K(3), 0);
Payoff_Put = max(K(1) - Stock_Price, 0) - 2 * max(K(2) - Stock_Price, 0) + max(K(3) - Stock_Price, 0);

% Plot Butterfly Spread for Call Option
figure(1)
plot(Stock_Price, Payoff_Call)
ylim([-2, 10.5])
grid on
grid minor
title("Butterfly Spread for Call Option")
xticks([80, 90, 100])
xticklabels({"K_1", "K_2", "K_3"})
xlabel("Stock Price")
ylabel("Payoff")

% Plot Butterfly Spread for Put Option
figure(2)
clf
plot(Stock_Price, Payoff_Put)
ylim([-2, 10.5])
grid on
grid minor
title("Butterfly Spread for Put Option")
xticks([80, 90, 100])
xticklabels({"K_1", "K_2", "K_3"})
xlabel("Stock Price")
ylabel("Payoff")
