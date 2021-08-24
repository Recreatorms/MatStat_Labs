function res = selective_median (array, k, h)
  res = 0;
  a = zeros(1, 8);
  w = zeros(1, 8); 
  for i = 1:8
    a(i) = array(i,1);
    w(i) = array(i,3);
  endfor
  sum = 0; 
  for i = 1:k
    sum += w(i);
  endfor
  if((sum + w(k+1)) > 0.5)
    res = a(k) + h/w(k+1) * (0.5 - sum);
  elseif((sum + w(k+1)) == 0.5)
    res = a(k+1);
  endif
endfunction
