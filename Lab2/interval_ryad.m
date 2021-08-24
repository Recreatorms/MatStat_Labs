function res = interval_ryad (array, m)
  res = zeros(8, 3);
  dm = (array(20, 10) - array(1,1)) / m;

  for i = 1:8
    res(i,1) = array(1,1) + (i-1)*dm;
   endfor

  count = 0;
 
  n = 1;
  for i = 1:20 
    for j = 1:10
      if(array(i,j) <= (res(n,1) + dm))
        ++count; 
        res(n,2) = count; 
      else
        count = 1;
        ++n;
        res(n,2) = count; 
      endif
    endfor
  endfor

  for i = 1:8
   res(i,3) = res(i,2)/200; 
  endfor
endfunction


