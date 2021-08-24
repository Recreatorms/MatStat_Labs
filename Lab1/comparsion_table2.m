function res = comparsion_table2(samp_mean, samp_disper, samp_mean_sq, moda, samp_median, koef_assim, koef_exc)
  N = 7;
  M = 4;
  
  res(1, 1) = samp_mean(1);
  res(2, 1) = samp_disper(1);
  res(3, 1) = samp_mean_sq(1);
  res(4, 1) = moda(1);
  res(5, 1) = samp_median(1);
  res(6, 1) = koef_assim(1);
  res(7, 1) = koef_exc(1);
  
  res(1, 2) = samp_mean(2);
  res(2, 2) = samp_disper(2);
  res(3, 2) = samp_mean_sq(2);
  res(4, 2) = moda(2);
  res(5, 2) = samp_median(2);
  res(6, 2) = koef_assim(2);
  res(7, 2) = koef_exc(2);
  
  for i = 1:N
    res(i, 3) = abs(res(i,2)-res(i,1));
      if res(i, 3) == 0 
        res(i, 4) = 0;
      else
        res(i, 4) = abs(res(i, 3)/res(i, 2))*100;
      endif
  endfor
endfunction