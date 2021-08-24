function res = sample_median(Matrix_Distrib, num_distrib, n, p, lambda)
  q = 1-p;
  res(1) = median(sort(Matrix_Distrib(:)));
  if num_distrib == 1 
    res(2) = round(n*p);
  elseif num_distrib == 2 
    res(2) = floor((-1/log2(q)));
  elseif num_distrib == 3 
    res(2) = floor(lambda+(1/3)-(0.02/lambda));
  endif
endfunction