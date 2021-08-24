N = 20;
M = 10;
v = input("Variant: ");
n = 7 + mod(v, 15);  
p = 0.2 + 0.005*v;
lambda = 1 + 0.02*v;

f = fopen('results.txt', 'wt');

fprintf(f, 'Binomial distribution:\n');
bin = binornd(n, p, N, M); 
bin = bin(:)';
fprintf(f, 'Selection:\n');
print_matrix_in_file(f, bin);
bin = sort(bin);
fprintf(f, 'Ordered the sample:\n');
print_matrix_in_file(f, bin);
fprintf(f, 'Geometric distribution:\n');
geom = geornd(p, N, M);
geom = geom(:)';
fprintf(f, 'Selection:\n');
print_matrix_in_file(f, geom);
geom = sort(geom);
fprintf(f, 'Ordered the sample:\n');
print_matrix_in_file(f, geom);
fprintf(f, 'Poisson distribution:\n');
puas = poissrnd(lambda, N, M);
puas = puas(:)'; 
fprintf(f, 'Selection:\n');
print_matrix_in_file(f, puas);
puas = sort(puas);
fprintf(f, 'Ordered the sample:\n');
print_matrix_in_file(f, puas);

view_statistic(bin, 1, 1, n, p, lambda, f);
view_statistic(geom, 2, 2, n, p, lambda, f);
view_statistic(puas, 3, 3, n, p, lambda, f);
fclose(f);