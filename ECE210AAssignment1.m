% Julie Hum 
% ECE210A Assignment 1

clc;

% 1. 
u = [17, 30, 8];
disp(u);

v = [9; 15; 12];
disp(v);

A = [-3 * u; -2 * u; -u; u; 2 * u];
disp(A);

B = [A.' v];
disp(B);

% 2.
c = exp(1j * pi / 3);

d = sqrt(1j);

m = 20000 ^ (1/4.3);

n = 2 ^ (7.5) + 25 * log(250);

% 3.
A = [8, 1, 12; -7, -2, -11; 1, -4, 0];
b = [109; -84; 56];

x = A \ b;