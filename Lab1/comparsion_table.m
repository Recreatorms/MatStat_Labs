function res = comparsion_table(comp_table)
Size = size(comp_table);
for i = 1:Size(2)
  comp_table(Size(1)+1, i) = abs(comp_table(2, i)-comp_table(3, i));
endfor
res = comp_table;
endfunction