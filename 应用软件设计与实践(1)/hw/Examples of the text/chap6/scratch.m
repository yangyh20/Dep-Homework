tic
for ii = 1:10
   x = a\b;
end
disp(toc/10);
tic
for ii = 1:10
   x_full = a_full\b_full;
end
disp(toc/10);
