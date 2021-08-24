function res = geom_prob(p, finish)
  q = 1-p;
  res = [];
  for i = 0:finish
    res(i+1) = (q**i)*p;
  endfor
endfunction