t=linspace(-0, 1, 500);
max_order=19;
Z=zeros(length(t), ceil(max_order/2));
for k=1:2:max_order
    Z(:, ceil(k/2))=fourier_helper(k, t);
end
% ��άͼ��
subplot(2, 1, 1);
plot(repmat(t', 1, ceil(max_order/2)), Z);
grid on;
xlabel('t');
ylabel('x(t)');
% ��άͼ��
subplot(2, 1, 2);
mesh(1:2:max_order, t, Z);
xlabel('г����ߴ���');
ylabel('t');
zlabel('x(t)');
