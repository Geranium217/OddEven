CC = nvcc

odd_even_merge_sort: odd_even_merge_sort.cu odd_even_merge_sort_host.c $(CC) -o odd_even_merge_sort odd_even_merge_sort.cu odd_even_merge_sort_host.c -lcudart

clean: rm -f odd_even_merge_sort
