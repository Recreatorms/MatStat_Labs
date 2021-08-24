function view_statistics(num_distrib, file, matrix, m, N, a1, sigma, lambda, a2, b)
  a0 = min(matrix);
  am = max(matrix);
  if num_distrib == 1
    fprintf(file, 'Normal distribution:\n');
  elseif num_distrib == 2
    a0 = 0;
    fprintf(file, 'Exponential distribution:\n');
  elseif num_distrib == 3
    a0 = a2;
    am = b;
    fprintf(file, 'Uniform distribution:\n');
  endif
  print_matrix_in_file(file, matrix);
  fprintf(file, 'Sorted:\n');
  matrix = sort(matrix);
  print_matrix_in_file(file, matrix);
  fprintf(file, 'Group and Assoc Selection:\n');
  ai = make_intervals(a0, am, m);
  statai = make_assoc_vec(ai);
  print_intervals(file, ai);
  fprintf(file, "%.5f\t", statai);
  gr_sel = group_selection(num_distrib, ai, m, matrix, N, a1, sigma, lambda, a2, b);
  print_matrix_in_file(file, gr_sel);
  empiric_func(matrix, num_distrib);
  histogram_func(num_distrib, statai, gr_sel(2, :));
  calculating_the_values(file, num_distrib, ai, statai, gr_sel(2, :), a1, sigma, lambda, a2, b);
endfunction