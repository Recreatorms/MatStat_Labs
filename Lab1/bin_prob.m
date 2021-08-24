function res = bin_prob(n, p)
  q = 1-p;
  res = [];
  for i = 0:n
    res(i+1) = bincoeff(n, i)*(p**i)*(q**(n-i));
  endfor
endfunction