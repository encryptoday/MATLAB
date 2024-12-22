syms y(t)  
X = y;  
Y = diff(y, 1);  
Z = diff(y, 2);  
V = odeToVectorField(diff(Z, 1) + y * Z == 0);  

tspan = [0 1000];  
y0 = [0 0 0.4696];  

V = odeToVectorField(diff(y, 3) + y * diff(y, 2) == 0);  
M = matlabFunction(V, 'vars', {'t', 'Y'});  

[t, Y] = ode23(M, tspan, y0);  

plot(t, Y(:,1), t, Y(:,2), t, Y(:,3));  
axis([0, 10, 0, 8]);  
legend({'f', 'f''', 'f'''}, 'Location', 'northwest');  
xlabel('\xi');  
ylabel('f, f'', f''''');  
