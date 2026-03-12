clc;

f0 = 1000;
fs = 5000;
t = 0:1/5000:1;

I = 1./sqrt(1+t.^2);
Q = t./sqrt(1+t.^2);
x = I .* cos(2*pi*f0*t) - Q .* sin(2*pi*f0*t);  
env = ones(size(t));

% RF signal with envelope
figure
plot(t, x, "b");
hold on
plot(t, env, "r");
plot(t, -env, "r");
title("RF signal with envelope")
legend("x(t)", "Envelope");
xlabel("t(s)");
ylabel("Amplitude");


% In-phase and quadrature component signals
figure
subplot(2, 1, 1);
plot(t, I);
title("In-phase component signal")
ylabel("Amplitude");
xlabel("t(s)");

subplot(2, 1, 2);
plot(t, Q);
title("Quadrature component signal")
ylabel("Amplitude");
xlabel("t(s)");
