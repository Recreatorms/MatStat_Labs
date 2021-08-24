function view_statistic(Matrix_Distrib, k, num_distrib, n, p, lambda, f)
  distrib_stat = stat_ser(Matrix_Distrib);
  if num_distrib == 1
    fprintf(f, 'Binomial distribution:\n');
  elseif num_distrib == 2
    fprintf(f, 'Geometrical distribution:\n');
  elseif num_distrib == 3
    fprintf(f, 'Puasson distribution:\n');
  endif
  fprintf(f, 'A series of distribution:\n');
  print_matrix_in_file(f, distrib_stat);
  comp_table = otn_polygon(distrib_stat, k, num_distrib, n, p, lambda);
  comp_table = comparsion_table(comp_table);
  fprintf(f, 'Table for comparing relative frequencies and theoretical probabilities:\n');
  print_matrix_in_file(f, comp_table);
  empiric_func(distrib_stat, k);

  fprintf(f, 'Table of comparison of calculated characteristics with theoretical values:\n');
  
  distrib_samp_mean = sample_mean(distrib_stat, num_distrib, n, p, lambda) 
  fprintf(f, '%.5g\n', distrib_samp_mean);
  distrib_samp_disper = sample_dispersion(Matrix_Distrib, num_distrib, n, p, lambda)
  fprintf(f, '%.5g\n', distrib_samp_disper);
  distrib_samp_mean_sq = sample_mean_sq(distrib_samp_disper) 
  fprintf(f, '%.5g\n', distrib_samp_mean_sq);
  distrib_moda = moda(Matrix_Distrib, num_distrib, n, p, lambda)
  fprintf(f, '%.5g\n', distrib_moda);
  distrib_samp_median = sample_median(Matrix_Distrib, num_distrib, n, p, lambda)
  fprintf(f, '%.5g\n', distrib_samp_median);
  distrib_koef_assim = koef_assimetrian(Matrix_Distrib, distrib_samp_mean_sq, num_distrib, n, p, lambda)
  fprintf(f, '%.5g\n', distrib_koef_assim);
  distrib_koef_exc = koef_excess(Matrix_Distrib, distrib_samp_mean_sq, num_distrib, n, p, lambda)
  fprintf(f, '%.5g\n', distrib_koef_exc);
  comp_table2 = comparsion_table2(distrib_samp_mean, distrib_samp_disper, distrib_samp_mean_sq, distrib_moda, distrib_samp_median, distrib_koef_assim, distrib_koef_exc);
  print_matrix_in_file(f, comp_table2);
endfunction