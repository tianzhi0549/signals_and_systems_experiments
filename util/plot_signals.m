function plot_signals(f)
    half_len=10*pi;
    t=-half_len:0.01:half_len;
    xlim([-half_len half_len]);
    ylim([-1.2 1.2]);
    hold on;
    plot(t, f(t));
    grid on;
end
