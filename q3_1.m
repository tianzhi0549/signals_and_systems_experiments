t=linspace(-0, 1, 500);
max_order=19;
Z=zeros(length(t), ceil(max_order/2));
for k=1:2:max_order
    Z(:, ceil(k/2))=fourier_helper(k, t);
end
% 二维图。
subplot(2, 1, 1);
plot(repmat(t', 1, ceil(max_order/2)), Z);
grid on;
xlabel('t');
ylabel('x(t)');
% 三维图。
subplot(2, 1, 2);
mesh(1:2:max_order, t, Z);
xlabel('谐波最高次数');
ylabel('t');
zlabel('x(t)');
