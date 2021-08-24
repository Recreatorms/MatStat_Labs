f = fopen('results.txt', 'w+');

fprintf(f, "Задание 1\n\n");

#task1 

sample1 = zeros(20,10);
sample1_sorted = zeros(20,10);
interval1 = zeros(8,4);
tabl_1_1 = zeros(9,6);
tabl_1_2 = zeros(9,6);
f1 = fopen('input1.txt', 'r');

sample1 = read_matrix_from_file(f1);
fclose(f1);

fprintf(f, "Выборка\n");
print_matrix_in_file(f, sample1);

sample1_sorted = sort_matrice(sample1);
fprintf(f, "\nОтсортированная выборка\n");
print_matrix_in_file(f, sample1_sorted);

interval1 = interval_ryad(sample1_sorted);
fprintf(f, "\nИнтервальный ряд\n");
print_matrix_in_file(f, interval1);

a = selective_average(interval1);
sigma = selective_standart_deviation(selective_dispersion(interval1));
fprintf(f, "\nМат. ожидание = %8.5f; среднее квадратичное = %8.5f.\n", a, sigma);

## таблица 1.1
tabl_1_1 = table_1_1(interval1, a, sigma);
fprintf(f, "\nТаблица 1.1\n");
print_matrix_in_file(f, tabl_1_1);

## гистограмма + график плотности 
#graph_histogram(interval1);
#graph_density(interval1, a, sigma);

## построить таблицу 1.2
tabl_1_2 = table_1_2(interval1, tabl_1_1);
fprintf(f, "\nТаблица 1.2\n");
print_matrix_in_file(f, tabl_1_2);

## проверка гипотезы; l = m - 3 = 5; 
xi = 11.1;

if(tabl_1_2(9,6) <= xi) 
  fprintf(f, "\n%8.5f <= %8.5f. Гипотеза верна\n\n\n", tabl_1_2(9,6), xi);
else 
  fprintf(f, "\n%8.5f > %8.5f. Гипотеза неверна\n\n\n", tabl_1_2(9,6), xi);
endif


fprintf(f, "Задание 2\n\n");

#task2

sample2 = zeros(20,10);
sample2_sorted = zeros(20,10);
interval2 = zeros(8,4);
tabl_2_1 = zeros(9,6);
f2 = fopen('input2.txt', 'r');

sample2 = read_matrix_from_file(f2);
fclose(f2);

fprintf(f, "Выборка\n");
print_matrix_in_file(f, sample2);

sample2_sorted = sort_matrice(sample2);
fprintf(f, "\nОтсортированная выборка\n");
print_matrix_in_file(f, sample2_sorted);

interval2 = interval_ryad2(sample2_sorted);
fprintf(f, "\nИнтервальный ряд\n");
print_matrix_in_file(f, interval2);

a1 = 1.76; b = 7.16;
fprintf(f, "\na = %8.5f; b = %8.5f.\n", a1, b);

## таблица 2.1
tabl_2_1 = table_2_1(interval2);
fprintf(f, "\nТаблица 2.1\n");
print_matrix_in_file(f, tabl_2_1);

## гистограмма + график плотности 
#graph(interval2, a1, b);

## проверка гипотезы; l = m - 1 = 7; 
xi = 14.1;

if(tabl_2_1(9,6) <= xi) 
  fprintf(f, "\n%8.5f <= %8.5f. Гипотеза верна\n\n\n", tabl_2_1(9,6), xi);
else 
  fprintf(f, "\n%8.5f > %8.5f. Гипотеза неверна\n\n\n", tabl_2_1(9,6), xi);
endif


fprintf(f, "Задание 3\n\n");

#task3

tabl_3_1 = zeros(1,9);
tabl_3_1 = table_3_1(sample2_sorted, a1, b);
fprintf(f, "\nТаблица 3.1\n");
print_matrix_in_file(f, tabl_3_1);

k = 1.36;

if(tabl_3_1(5) <= xi) 
  fprintf(f, "\n%8.5f <= %8.5f. Гипотеза верна\n\n\n", tabl_3_1(5), k);
else 
  fprintf(f, "\n%8.5f > %8.5f. Гипотеза неверна\n\n\n", tabl_3_1(5), k);
endif

graph_empiric_func(sample2_sorted);
graph_distrib(a1,b);

fclose(f);