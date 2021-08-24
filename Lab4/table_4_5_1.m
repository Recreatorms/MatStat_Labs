function res = table_4_5_1 (array)
  res = zeros(3,5);
  x = zeros(1,3); x2 = zeros(1,3); S = zeros(1,3); #T = zeros(1,3);
  for i = 1:3
    for j = 1:20
      x(i) += array(j,i);
      x2(i) += array(j,i)**2;
    endfor
    x(i) *= 1/200; x2(i) *= 1/200;
    S(i) = 20/19 * (x2(i) - x(i)**2);
  endfor
  res(1,1) = max(S(1), S(2));
  res(2,1) = max(S(1), S(3));
  res(3,1) = max(S(2), S(3));
  res(1,2) = min(S(1), S(2));
  res(2,2) = min(S(1), S(3));
  res(3,2) = min(S(2), S(3));
  res(1,3) = res(2,3) = res(3,3) = res(1,4) = res(2,4) = res(3,4) = 19;
  for i = 1:3
    res(i,5) = res(i,1)/res(i,2);
  endfor
endfunction
