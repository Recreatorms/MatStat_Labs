function res = sample_dispersion(Matrix_Distrib, num_distrib, n, p, lambda)
  res(1) = moment(Matrix_Distrib(:), 2);
  q = 1-p;
  if num_distrib == 1 
    res(2) = n*p*q;
  elseif num_distrib == 2 
    res(2) = q/(p**2);
  elseif num_distrib == 3 
   res(2) = lambda;
  endif
endfunction