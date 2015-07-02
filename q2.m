half_len=5*pi;
x=@(t)sin(t)./t;
x1=@(t)x(t+3);
x2=@(t)x(2*t+3);
x3=@(t)x(-2*t+3);
t=-half_len:0.01:half_len;
hold on;
plot(t, x(t), 'r');
plot(t, x1(t), 'b');
plot(t, x2(t), 'k');
plot(t, x3(t), 'm');
legend('x(t)', 'x(t+3)', 'x(2t+3)', 'x(-2t+3)');
xlim([-half_len half_len]);