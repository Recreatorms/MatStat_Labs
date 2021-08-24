function res = periodicity(Vec, Matrix)
  res = zeros(1, length(Vec));
  matr_vec = (Matrix(:))';
  for i = 1:length(Vec)
    res(i) = is_in(Vec(i), matr_vec);
  end
endfunction