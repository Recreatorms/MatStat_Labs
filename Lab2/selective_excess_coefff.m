function res = selective_excess_coefff (array, h)
  val1 = selective_central_moment(array, 4); 
  val2 = selective_dispersion(array, h);
  val2 = val2**4;
  res = val1/val2 - 3;
endfunction
