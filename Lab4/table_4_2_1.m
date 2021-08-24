function res = table_4_2_1 (array)
  res = zeros(3,7);
  x = zeros(1,3); x2 = zeros(1,3); S = zeros(1,3); #T = zeros(1,3);
  for i = 1:3
    for j = 1:20
      x(i) += array(j,i);
      x2(i) += array(j,i)**2;
    endfor
    x(i) *= 1/200; x2(i) *= 1/200;
    S(i) = 20/19 * (x2(i) - x(i)**2);
  endfor
  res(1,1) = res(2,1) = x(1); 
  res(1,2) = res(3,1) = x(2); 
  res(2,2) = res(3,2) = x(3);
  
  res(1,3) = res(2,3) = x2(1); 
  res(1,4) = res(3,3) = x2(2); 
  res(2,4) = res(3,4) = x2(3);
  
  res(1,5) = res(2,5) = S(1); 
  res(1,6) = res(3,5) = S(2); 
  res(2,6) = res(3,6) = S(3);
  
  #sqrt(20*20(20+20-2)/40) = sqrt(380) = 19.49359
  for i = 1:3
    res(i,7) = (res(i,1) - res(i,2)) * ((res(i,5)*19 + res(i,6)*19)**(-0.5)) * 19.49359; 
  endfor
endfunction
