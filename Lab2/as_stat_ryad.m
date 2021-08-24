function res = as_stat_ryad (array, interval_ryad, m) 
  res = zeros(8, 3);
dm = (array(20, 10) - array(1,1)) / m;
for i = 1:8
  res(i,1) = interval_ryad(i,1)+ dm/2; 
  res(i,2) = interval_ryad(i,2); 
  res(i,3) = interval_ryad(i,3);
endfor endfunction

