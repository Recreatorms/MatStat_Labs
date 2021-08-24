function res = norm_raspr (a1, sigma, a, dm)
  res = normcdf(a+dm, a1, sigma) - normcdf(a, a1, sigma);
endfunction
