function res = puas_prob(lambda, finish)
  res = [];
  for i = 0:finish
    res(i+1) = ((lambda**i)*exp(-lambda))/(factorial(i));
  endfor
endfunction