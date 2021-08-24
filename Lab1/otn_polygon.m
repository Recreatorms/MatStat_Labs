function res = otn_polygon(Stat_Matrix, k, num_distrib, n, p, lambda)
  x = Stat_Matrix(1, :)
  y = Stat_Matrix(3, :);
  
  v = [];
  if num_distrib == 1
    v = bin_prob(max(x), p)
  elseif num_distrib == 2
    v = geom_prob(p, max(x))
  elseif num_distrib == 3
    v = puas_prob(lambda, max(x))
  endif
  subplot(3, 2, k*2 - 1)
  plot(x, y, "-", "linewidth", 3);
  hold on;
  plot(x, v, "r", "linewidth", 3);
  set(gca, 'ylim', [0, 1]);
  set(gca, 'xlim', [min(x), max(x)]);
  set(gca, 'xtick', min(x):1:max(x));
  set(gca, 'ytick', 0.0:0.1:1.0);
  grid on;
  hold off;
  res = [x; y; v];
endfunction