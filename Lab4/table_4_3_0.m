function res = table_4_3_0 (array)
  # So Sf S S2f S2 k1 k2 F
  res = zeros(1,8);
  u = zeros(1,3);
  u0 = 0;
  for j = 1:3
    for i = 1:20
      u(j) += array(i,j);
    endfor
    u0 += u(j);
    u(j) *= 1/20;
  endfor
  u0 *= 1/60; # 20*3 
  
  So = 0; Sf = 0;
  for j = 1:3
    for i = 1:20
      So += (array(i,j) - u0)**2;
    endfor
    Sf += (u(j) - u0)**2;
  endfor
  Sf *= 20;
  
  S = So - Sf;
  S2f = Sf/2;
  S2 = S/(3*19);
  k1 = 2;
  k2 = 3*19;
  F = S2f/S2;
  res(1) = So; res(2) = Sf; res(3) = S; 
  res(4) = S2f; res(5) = S2;
  res(6) = k1; res(7) = k2; res(8) = F;
endfunction
