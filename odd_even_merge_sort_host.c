#include <stdio.h> #include <stdlib.h>

int main() { // read input from user int n; printf("Enter the size of the array: "); scanf("%d", &n);

int* arr = (int*)malloc(n * sizeof(int));
printf("Enter the values to be sorted (separated by spaces): ");
for (int i = 0; i < n; i++) {
    scanf("%d", &arr[i]);
}

// call CUDA kernel
// ...

// print sorted array
printf("Sorted array: ");
for (int i = 0; i < n; i++) {
    printf("%d ", arr[i]);
}
printf("\n");

free(arr);

return 0;

}
