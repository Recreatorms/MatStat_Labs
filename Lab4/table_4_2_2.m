function res = table_4_2_2 (tabl)
  res = zeros(3,3);
  #2N-2=2*20-2=40-2=38
  t = tinv(0.975,38);
  for i = 1:3
    res(i,1) = abs(tabl(i,7));
    res(i,2) = t;
    if(res(i,1) <= t) 
      res(i,3) = 1; ## true
    else
      res(i,3) = 0;
    endif
  endfor
endfunction
