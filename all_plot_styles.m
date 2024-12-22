% (a) Plotting a Polar Graph
theta = linspace(0,24*pi,1000);
r = exp(cos(theta)) - 2*cos(4*theta) + sin(theta/12).^5;
polarplot(theta,r)

% (b) Plotting a Parametric 2D Curve
syms t
xt = 2*cos(t) + cos(2*t);
yt = 2*sin(t) - sin(2*t);
fplot(xt, yt, [0, 4*pi]);

% (c) Plotting a Parametric Curve with Integral
syms u t
xt = int((cos(pi*u.^2)/2), u, [0,t]);
yt = int((sin(pi*u.^2)/2), u, [0,t]);
fplot(xt, yt, [-10, 10])

% (d) Plotting a Parametric 3D Curve
a = 1;
c = 1/3;
xt = a*cos(t);
yt = a*sin(t);
zt = c*t;
fplot3(xt, yt, zt, [pi/3, 8*pi])

% (e) Plotting Implicit Surfaces
syms x y z
z1 = x.^2 + y.^2;
z2 = 12 - y;
fsurf([z1, z2])

% (f) Plotting Implicit 3D Curve
syms x y z
z1 = 9.*x.^2 + y.^2 + 9.*z.^2 - 81;
z2 = y - x.^2 - z.^0;
fimplicit3([z1, z2])

% (g) Plotting Parametric Surface
syms t t2
xt = t*sin(t)*t2.^0;
yt = t*cos(t)*t2.^0;
zt = t.^2 * t2.^0;
z2 = x.^2 + y.^2;
fsurf(xt, yt, zt)
fsurf(z2)

% (h) Contour Plot of a Function
x = -5:0.2:5;
y = -5:0.2:5;
z = -5:0.2:5;
[X,Y] = meshgrid(x, y);
Z1 = 4*X.^2 + Y.^2;
levels = [1,4,9,16,26,36];
contour(X, Y, Z1, levels)

% (i) Contour Plot of a Mathematical Function
fcontour(@(x, y) abs(sin(x).*cos(x)), [0, 2*pi, 0, 2*pi])

% (j) Surface and Contour Plot with Colormap
syms x y
z = x .* y .* exp((-1/4)*x.^2 .* y.^2);
figure(2)
fsurf(z, [-5, 5, -5, 5])
colormap(winter)
fcontour(z, [-1, 1, -1, 1])
f1 = figure(1);
fsurf(z, [-5, 5, -5, 5])
colormap(f1, hot);
axis off;

% (k) Polar Plots for Different Values of n
syms n
theta = 0:pi/100:2*pi;
r1 = 1 - 2*sin(n*theta);
r2 = 2 - 3*cos(n*theta).^2;

disp('For (i)' );
figure(1)
for i = 1:6
    r = subs(r1, n, i);
    subplot(3, 2, i)
    polarplot(theta, r)
    title(['n = ', num2str(i)])
end

disp('For (ii)' );
figure(2)
for i = 1:6
    rr = subs(r2, n, i);
    subplot(2, 3, i)
    polarplot(theta, rr)
    title(['n = ', num2str(i)])
end
