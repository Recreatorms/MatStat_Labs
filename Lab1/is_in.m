function res = is_in(x, X)
  res = 0;
  for i = 1:length(X)
    if x == X(i)
      res = res+1;
    end
  end
endfunction