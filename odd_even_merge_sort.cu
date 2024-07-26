#include <cuda_runtime.h> #include <stdio.h> #include <stdlib.h>

#define BLOCK_SIZE 256

global void oddEvenMergeSort(int* arr, int n) { int idx = blockIdx.x * blockDim.x + threadIdx.x; if (idx < n) { if (idx % 2 == 0) { // odd index, compare with next element if (arr[idx] > arr[idx + 1]) { int temp = arr[idx]; arr[idx] = arr[idx + 1]; arr[idx + 1] = temp; } } else { // even index, compare with previous element if (idx > 0 && arr[idx] < arr[idx - 1]) { int temp = arr[idx]; arr[idx] = arr[idx - 1]; arr[idx - 1] = temp; } } } }

int main() { int n; printf("Enter the size of the array: "); scanf("%d", &n);

int* arr = (int*)malloc(n * sizeof(int));
printf("Enter the values to be sorted (separated by spaces): ");
for (int i = 0; i < n; i++) {
    scanf("%d", &arr[i]);
}

// copy array to device
int* d_arr;
cudaMalloc((void**)&d_arr, n * sizeof(int));
cudaMemcpy(d_arr, arr, n * sizeof(int), cudaMemcpyHostToDevice);

// launch kernel
int blockSize = BLOCK_SIZE;
int numBlocks = (n + blockSize - 1) / blockSize;
oddEvenMergeSort<<<numBlocks, blockSize>>>(d_arr, n);

// copy result back to host
int* h_arr = (int*)malloc(n * sizeof(int));
cudaMemcpy(h_arr, d_arr, n * sizeof(int), cudaMemcpyDeviceToHost);

// print sorted array
printf("Sorted array: ");
for (int i = 0; i < n; i++) {
    printf("%d ", h_arr[i]);
}
printf("\n");

free(arr);
free(h_arr);
cudaFree(d_arr);

return 0;

}
