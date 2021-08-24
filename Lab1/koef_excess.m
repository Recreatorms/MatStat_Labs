function res = koef_excess(Matrix_Distrib, distrib_samp_mean_sq, num_distrib, n, p, lambda)
  q = 1 - p;
  res(1) = (moment(Matrix_Distrib(:), 4)/((distrib_samp_mean_sq(1))**4)) - 3;
  if num_distrib == 1 
    res(2) = (1-6*p*q)/(n*p*q);
  elseif num_distrib == 2 
    res(2) = 6 + (p**2)/q;
  elseif num_distrib == 3 
    res(2) = 1/lambda;
  endif
endfunction   