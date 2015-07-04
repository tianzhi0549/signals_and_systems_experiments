t=linspace(-1, 1, 500);
max_orders=[6 12 24];
for i=1:length(max_orders)
    subplot(length(max_orders), 1, i);
    plot(t, fourier_helper(max_orders(i), t));
    line([-1 1], [0 0], 'color', 'r');
    line([0 0], [2 -2], 'color', 'r');
    title(['最高谐波次数=' num2str(max_orders(i))]);
end
