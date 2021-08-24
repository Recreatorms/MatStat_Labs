function res = table_4_6_1 (array)
  u1 = u2 = u3 = zeros(1,20);
  res = zeros(1,3);
  for i = 1:20
    u1(i) = array(i,1);
    u2(i) = array(i,2);
    u3(i) = array(i,3);
  endfor
  res(1) = pval = bartlett_test(u1, u2, u3);
  res(2) = 0.05;
  if(pval >= 0.05) res(3) = 1; # не противоречит 
  endif
endfunction
