function res = table_4_4_3 (array)
  u1 = u2 = u3 = zeros(1,20);
  res = zeros(3,3);
  for i = 1:20
    u1(i) = array(i,1);
    u2(i) = array(i,2);
    u3(i) = array(i,3);
  endfor
  res(1,1) = welch_test(u1,u2);
  res(2,1) = welch_test(u1,u3);
  res(3,1) = welch_test(u2,u3);
  for i = 1:3
    res(i,2) = 0.05;
    if(res(i,1) >= 0.05) 
      res(i,3) = 1; # не противоречит 
    endif
  endfor
endfunction
