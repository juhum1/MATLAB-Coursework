% Julie Hum 
% ECE210A Assignment 5

clc;
clear;
close all;

% 1.
x = linspace(-2*pi, 2*pi, 1000);

% ca is cos approx.
ca = ones(10, length(x));

row = 1;

for n = 2:2:20
    add_on = ((-1)^(n/2))*x.^n/factorial(n);

    if row == 1
        ca(row,:) = ca(row,:) + add_on;
    else
        ca(row,:) = ca(row-1,:) + add_on;
    end

    row = row + 1;
end

figure;
plot(x, cos(x));
xticklabels({'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2', ...
    '\pi','3\pi/2','2\pi'})

figure;
subplot(6, 2, 1)
titles = {'2nd order approximation', ...
          '4th order approximation', ...
          '6th order approximation', ...
          '8th order approximation', ...
          '10th order approximation', ...
          '12th order approximation', ...
          '14th order approximation', ...
          '16th order approximation', ...
          '18th order approximation', ...
          '20th order approximation'};

for i = 1:10
    subplot(5,2,i)
    plot(x, ca(i,:))
    
    title(titles{i})
    xlabel('x')
    ylabel('cos(x)')
    
    xlim([-2*pi 2*pi])
    ylim([-1.5 1.5])
   
    xticklabels({'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2', ...
    '\pi','3\pi/2','2\pi'})
end

% 2.
figure
subplot(1, 2, 1);
plot(x, cos(x))
xlabel('x')
ylabel('cos(x)')
xticklabels({'-2\pi', '-3\pi/2', '-\pi', '-pi/2', '0', 'pi/2', ...
    '\pi', '3\pi/2', '2\pi'});

subplot(1, 2, 2);
hold on

for i = 1:10
    plot(x, ca(i, :))
end
xlabel('x')
ylabel('cos(x)')
xticklabels({'-2\pi', '-3\pi/2', '-\pi', '-pi/2', '0', 'pi/2', ...
    '\pi', '3\pi/2', '2\pi'});

% 3.

x = linspace(-4*pi,4*pi,100);
y = linspace(-4 *pi,4*pi,100);

[X,Y] = meshgrid(x,y);

R = sqrt(X.^2 + Y.^2);

Z = sin(R)./R;

Z(R==0) = 1;   

figure;
surf(X,Y,Z)
xlabel('x')
ylabel('y')
zlabel('z')
