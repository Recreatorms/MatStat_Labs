function res = table_4_5_1 (tabl)
  res = zeros(3,3);
  z = finv(0.975, 19, 19);
  for i = 1:3
    res(i,1) = tabl(i,5);
    res(i,2) = z;
    if(res(i,1) <= z) res(i,3) = 1; # не противоречит
    endif
  endfor
endfunction