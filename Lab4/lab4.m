f = fopen('results.txt', 'w');

fprintf(f, "Задание 1\n\n");

#task1 

sample1 = zeros(20,10);
tabl_4_1 = zeros(1,4);
f1 = fopen('input1.txt', 'r');

sample1 = read_matrix_from_file(f1, 20, 10);
fclose(f1);

fprintf(f, "Выборка\n");
print_matrix_in_file(f, sample1);

a = 1.42; sigma = 1.084; dis = sigma**2;
fprintf(f, "\nМат. ожидание = %8.5f; среднее квадратичное = %8.5f; дисперсия = %8.5f.\n", 
a, sigma, dis);
u_1 = u1(sample1);
func = inline("exp((-t**2)/2)");
intgrl = quad(func, -inf, 0.95);
c = a + sigma/(200**0.5)*1/intgrl;

tabl_4_1 = table_4_1(u_1, c);
fprintf(f, "\nТаблица 4.1\n");
print_matrix_in_file(f, tabl_4_1);


# task 2 

fprintf(f, "\n\nЗадание 2\n\n");

sample2 = zeros(20,3);
tabl_4_2_1 = zeros(3,7);
tabl_4_2_2 = zeros(3,3);
f2 = fopen('input2.txt', 'r');
sample2 = read_matrix_from_file(f2, 20, 3);
fclose(f2);

fprintf(f, "Выборка\n");
print_matrix_in_file(f, sample2);
tabl_4_2_1 = table_4_2_1(sample2);

fprintf(f, "\nТаблица 4.2.1\n");
print_matrix_in_file(f, tabl_4_2_1);

tabl_4_2_2 = table_4_2_2(tabl_4_2_1);
fprintf(f, "\nТаблица 4.2.2\n");
print_matrix_in_file(f, tabl_4_2_2);

# task 3

fprintf(f, "\n\nЗадание 3\n\n");

tabl_4_3_0 = zeros(1,8);
tabl_4_3 = zeros(1,4);

tabl_4_3_0 = table_4_3_0(sample2);
fprintf(f, "\nРезультаты расчетов\n");
print_matrix_in_file(f, tabl_4_3_0);

tabl_4_3 = table_4_3(tabl_4_3_0);
fprintf(f, "\nТаблица 4.3\n");
print_matrix_in_file(f, tabl_4_3);

# task 4

fprintf(f, "\n\nЗадание 4\n");

tabl_4_4_2 = zeros(3,3);
tabl_4_4_3 = zeros(3,3);

fprintf(f, "\n\nПункт 1\n\n");

#tabl_4_4_0 = anova(sample2);
#anova_pval = tabl_4_4_0(1);
anova_pval = anova(sample2);
fprintf(f, "pval[anova] = %10.5f", anova_pval);

fprintf(f, "\n\nПункт 2\n");
tabl_4_4_2 = table_4_4_2(sample2);
fprintf(f, "\nТаблица 4.4.2\n");
print_matrix_in_file(f, tabl_4_4_2);

fprintf(f, "\n\nПункт 3\n");
tabl_4_4_3 = table_4_4_3(sample2);
fprintf(f, "\nТаблица 4.4.3\n");
print_matrix_in_file(f, tabl_4_4_3);

# task 5

fprintf(f, "\n\nЗадание 5\n\n");

tabl_4_5_1 = zeros(3,5);
tabl_4_5_2 = zeros(3,3);

tabl_4_5_1 = table_4_5_1(sample2);
fprintf(f, "\nТаблица 4.5.1\n");
print_matrix_in_file(f, tabl_4_5_1);

tabl_4_5_2 = table_4_5_2(tabl_4_5_1);
fprintf(f, "\nТаблица 4.5.2\n");
print_matrix_in_file(f, tabl_4_5_2);

# task 6

fprintf(f, "\n\nЗадание 6\n\n");

tabl_4_6_1 = zeros(1,3);
tabl_4_6_2 = zeros(3,3);

tabl_4_6_1 = table_4_6_1(sample2);
fprintf(f, "\nТаблица 4.6.1\n");
print_matrix_in_file(f, tabl_4_6_1);

tabl_4_6_2 = table_4_6_2(sample2);
fprintf(f, "\nТаблица 4.6.2\n");
print_matrix_in_file(f, tabl_4_6_2);

fclose(f);