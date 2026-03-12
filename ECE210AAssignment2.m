% Julie Hum
% ECE210 A Assignment 2
clc;

%1.
u = -5:3:7;
disp(u);

v = -pi:pi/2:pi;
disp(v);

%2.
n = prod(1:10);
disp(n);

%3.
A = eye(5);
A(3, 3) = 0;

b = 12:-1:1;
bb = reshape(b, 2, [])';
B = [reshape(bb(:,1),3,[]), reshape(bb(:,2),3,[])];

%4.
t = linspace(-pi, pi);
n = linspace(0, 50, 51)';
an = 2*n + 1;
M = sin(an .* t) ./ an;
s = sum(M,1);
plot(t,s)