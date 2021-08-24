function res = koef_assimetrian(Matrix_Distrib, distrib_samp_mean_sq, num_distrib, n, p, lambda)
  q = 1-p;
  res(1) = moment(Matrix_Distrib(:), 3)/((distrib_samp_mean_sq(1))**3);
  if num_distrib == 1 
    res(2) = (q-p)/sqrt(n*p*q); 
  elseif num_distrib == 2 
    res(2) = (2-p)/sqrt(q);
  elseif num_distrib == 3 
    res(2) = 1/sqrt(lambda);
  endif
endfunction