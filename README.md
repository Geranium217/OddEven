# OddEven
CUDA implementation for oddevensort

Odd-Even Merge Sort on CUDA

This program implements the odd-even merge sort algorithm on CUDA. The algorithm is designed to take advantage of the parallel processing capabilities of the GPU.

To use this program, simply compile the code and run it from the command line. The program will prompt you to enter the size of the array and the values to be sorted.

**Files:**

* `odd_even_merge_sort.cu`: The main CUDA kernel code
* `odd_even_merge_sort_host.c`: The host-side code for managing the array and calling the CUDA kernel
* `Makefile`: A simple Makefile for compiling the code

**Compilation:**

To compile the code, run the following command:

make

This will generate an executable file called `odd_even_merge_sort`.

**Running the program:**

To run the program, simply execute the executable file:

./odd_even_merge_sort

The program will prompt you to enter the size of the array and the values to be sorted. For example:

Enter the size of the array: 10 Enter the values to be sorted (separated by spaces): 5 2 8 3 1 6 4 7 9

The program will then sort the array using the odd-even merge sort algorithm and print the sorted array to the console.
