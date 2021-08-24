function res = table_4_3 (tabl)
  res = zeros(1,4);
  res(1) = tabl(8);
  res(2) = 0.05;
  res(3) = finv(0.95, tabl(6), tabl(7));
  if(res(1) <= res(3)) 
    res(4) = 1; # не противоречит
  endif
endfunction
