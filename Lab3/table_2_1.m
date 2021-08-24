function res = table_2_1 (intr)
  res = zeros(9,6);
  sum = zeros(1,3);
  max = 0;
  N = 200;
  for i = 1:8
    res(i,1) = i;
    res(i,2) = intr(i,1);
    res(i,3) = intr(i,4);
    sum(1) += res(i,3);
    res(i,4) = 1/8;
    sum(2) += res(i,4);
    res(i,5) =abs(res(i,4)-res(i,3));
    if(res(i,5)>max) 
      max = res(i,5);
    endif
    res(i,6) = N * (res(i,5))**2 / res(i,4);
    sum(3) += res(i,6);
  endfor
  res(9,3) = sum(1);
  res(9,4) = sum(2);
  res(9,5) = max;
  res(9,6) = sum(3);
  
endfunction
