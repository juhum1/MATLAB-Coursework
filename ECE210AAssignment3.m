% Julie Hum 
% ECE210A Assignment 3

clc;

% 1.
x = linspace(-pi, pi, 10^4);
u = exp(sin(x));

v = u(u<2);

avg = sum(v)/length(v)

% 2. 

m = (1:256);    
n = (1:256)';

M = (abs(m - 100) + abs(n - 100)) < 40;
N = sqrt((m - 100).^2 + (n - 100).^2) > 15;

L = M & N;

imshow(L);

% 3.

die1 = 1:6;
die2 = (1:6)';
die3 = reshape(1:6, 1, 1, 6);

sum_matrix = die1 + die2 + die3;

num = sum(sum_matrix(:) >= 11);

prob = num / 6^3

% Extra

mm = (1:256);
nn = (1:256)';

mc = sqrt((mm - 88).^2 ./2 + (nn - 76).^2) > 15;

c1 = max(abs(mm - 128), (4*abs(nn - 106)) ./5) < 40;
c2 = max(abs(mm - 177), abs(nn - 96) ./4) < 9;
c3 = sqrt((mm - 128).^2 + (3*(nn - 56).^2)./2) < 40;
c4 = sqrt((mm - 80).^2 ./2 + (nn - 76).^2) < 20;
c5 = sqrt((mm - 103).^2 + (nn - 156).^2 ./5) < 40;
c6 = sqrt((mm - 153).^2 + (nn - 156).^2 ./5) < 15;

U = mc & (c1 | c2 | c3 | c4 | c5 | c6);

figure;
imshow(U);