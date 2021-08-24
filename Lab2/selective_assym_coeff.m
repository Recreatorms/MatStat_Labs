function res = selective_assym_coeff (array, h)
  val1 = selective_central_moment(array, 3);
  val2 = selective_dispersion(array, h);
  val2 = val2**3; res = val1/val2;
endfunction
