function res = moda(Matrix_Distrib, num_distrib, n, p, lambda)
  [res(1), ~, ~] = mode(Matrix_Distrib(:));
  if num_distrib == 1 
    if isinteger((n+1)*p)
      res(2) = floor(((n+1)*p)-1/2);
    else
      res(2) = floor((n+1)*p);
    endif
  elseif num_distrib == 2 
    res(2) = 0;
  elseif num_distrib == 3 
    res(2) = floor(lambda);
  endif
endfunction