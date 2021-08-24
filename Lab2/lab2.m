N = 200;

V = 42;

a1 = (-1)**V * 0.1 * V; ## a для 1го задания 
sigma = 0.01*V + 1;

lambda = 2 + (-1)**V * 0.01 * V;

a2 = (-1)**V * 0.05 * V; ## а для 3го задания 
b = a2 + 6;
 
m = 8;

norm = zeros(20,10); 
norm_sorted = zeros(20,10); 
exp = zeros(20,10); 
exp_sorted = zeros(20,10); 
uni = zeros(20,10); 
uni_sorted = zeros(20,10);

interval_ryad1 = zeros(8, 3); 
interval_ryad2 = zeros(8, 3); 
interval_ryad3 = zeros(8, 3); 
as_stat_ryad1 = zeros(8, 3); 
as_stat_ryad2 = zeros(8, 3); 
as_stat_ryad3 = zeros(8, 3); 
prob1 = zeros(8,3);
prob2 = zeros(8,3); 
prob3 = zeros(8,3);


f = [];

f(1) = fopen('norm.txt', 'r+');
f(2) = fopen('exp.txt', 'r+');
f(3) = fopen('uni.txt', 'r+');
f(4) = fopen('results.txt', 'r+');

raspr = 3;
  fseek(f(raspr), 0, SEEK_END); 
  size = ftell(f(raspr));
  ## сгенерировать массив  
  mas = generate(raspr, a1, sigma, lambda, a2, b, N); 
  print_matrix_in_file(f(raspr), mas);  
  fprintf(f(4), "Выборка для %d-го распределения\n", raspr); 
  print_matrix_in_file(f(4), mas);

  fprintf(f(4), "\n\n");

  if(raspr==1)
    norm = mas; 
  elseif(raspr==2) 
    exp = mas; 
  elseif(raspr==3)
    uni = mas;
  endif
  mas = sort_matrice(mas);
  fprintf(f(4), "Отсортированная выборка\n"); 
  print_matrix_in_file(f(4), mas);
  fprintf(f(4), "\n\n");
  h = (mas(20,10)-mas(1,1))/m;

  if(raspr==1)
    norm_sorted = mas; 
  elseif(raspr==2)
    exp_sorted = mas; 
  elseif(raspr==3)
    uni_sorted = mas; 
  endif
  
  
  
  
  
  graph_empiric_func(mas); 
  
  
  
  
  
  
  intr = interval_ryad(mas, m);
  fprintf(f(4), "Интервальный ряд\n");
  print_matrix_in_file(f(4), intr); 
  fprintf(f(4), "\n\n");
  if(raspr==1)
    interval_ryad1 = intr; 
  elseif(raspr==2)
    interval_ryad2 = intr; 
  elseif(raspr==3)
    interval_ryad3 = intr; 
  endif
  
  
  
  graph_histogram(mas, intr);

  
  
  
  
  res = as_stat_ryad(mas, intr, m);
  fprintf(f(4), "Ассоциированный статистический ряд\n"); 
  print_matrix_in_file(f(4), res);
  fprintf(f(4), "\n\n");

  if(raspr==1)
    as_stat_ryad1 = res; 
  elseif(raspr==2)
    as_stat_ryad2 = res; 
  elseif(raspr==3) 
    as_stat_ryad3 = res;
  endif

  prob = prob_table(raspr, mas, intr, m, a1, sigma, lambda, a2, b);
  fprintf(f(4), "Таблица сравнения относительных и теоретических вероятностей\n");
  print_matrix_in_file(f(4), prob);
  fprintf(f(4), "\n\n");

  if(raspr==1) 
    prob1 = prob;
  elseif(raspr==2) 
    prob2 = prob; 
  elseif(raspr==3) 
    prob3 = prob;
  endif

  av = selective_average(res);
  fprintf(f(4), "Выборочное среднее = %d\n", av);

  dis = selective_dispersion(res, h);
  fprintf(f(4), "Выборочная дисперсия с поправкой Шеппарда = %d\n", dis);

  dev = selective_standart_deviation(dis);
  fprintf(f(4), "Выборочное среднее квадратичное отклонение = %d\n", dev);
  k = modal_interval(res);
  moda = selective_mode(intr, k, h);
  fprintf(f(4), "Выборочная мода = %d\n", moda);

  med = selective_median(intr, k, h);
  fprintf(f(4), "Выборочная медиана = %d\n", med);

  assym_coeff = selective_assym_coeff(res, h);
  fprintf(f(4), "Выборочный коэффициент асимметрии = %d\n", assym_coeff);

  excess_coeff = selective_excess_coefff(res, h);
  fprintf(f(4), "Выборочный коэффициент эксцесса = %d\n", excess_coeff); 
  fprintf(f(4), "\n\n");

for i = 1:4
  fclose(f(i));
endfor