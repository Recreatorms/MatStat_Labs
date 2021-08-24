function res = stat_sum(Otn_P)
  res = zeros(1, length(Otn_P));
  res(1) = Otn_P(1);
  for i = 2:length(Otn_P)
    res(i) = res(i-1) + Otn_P(i);
  end  
endfunction  