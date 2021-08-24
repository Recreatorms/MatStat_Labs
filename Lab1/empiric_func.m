function empiric_func(Stat_Matrix, k)
  numbers = Stat_Matrix(1, :);
  x = 0:1:(max(numbers)+1);
for i = 1:(length(x)-1)
  if (x(i) < numbers(1))
    y(i) = 0;
  elseif (x(i) >= numbers(length(numbers)))
    y(i) = 1;
  else
    for j = 1:(length(numbers)-1)
      if and(x(i) >= numbers(j), x(i) < numbers(j+1))
        y(i) = Stat_Matrix(4, j);
      end
    end
  end
  hold on;
  subplot(3, 2, k*2)
  plot([x(i), x(i+1)], [y(i), y(i)], "b", "linewidth", 3);
  set(gca, 'ylim', [0, 1]);
  set(gca, 'ytick', 0.0:0.1:1.0);
  set(gca, 'xtick', min(x):1:max(x));
  set(gca, 'xlim', [min(x), max(x)]);
  hold off;
end  
grid on;
endfunction