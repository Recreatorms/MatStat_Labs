function res = sample_mean(Stat_Matrix, num_distrib, n, p, lambda)
  Size = size(Stat_Matrix);
  q = 1 - p;
  res(1) = 0;
  for i = 1:Size(2)
    res(1) = res(1) + Stat_Matrix(1, i)*Stat_Matrix(3, i);
  end
  
  if num_distrib == 1 
    res(2) = n*p; 
  elseif num_distrib == 2 
    res(2) = q/p;
  elseif num_distrib == 3 
    res(2) = lambda;
  endif
endfunction