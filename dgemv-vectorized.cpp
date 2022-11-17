const char* dgemv_desc = "Vectorized implementation of matrix-vector multiply.";

/*
 * This routine performs a dgemv operation
 * Y :=  A * X + Y
 * where A is n-by-n matrix stored in row-major format, and X and Y are n by 1 vectors.
 * On exit, A and X maintain their input values.
 */
void my_dgemv(int n, double* A, double* x, double* y) {
   // insert your code here: implementation of vectorized vector-matrix multiply
   for(int i = 0; i < n; i ++){
      for(int j = 0; j< n; j += 8){
         y[i] = y[i] + A[j + (i * n)] * x[j];
         y[i] = y[i] + A[j + (i * n) + 1] * x[j+1];
         y[i] = y[i] + A[j + (i * n) + 2] * x[j+2];
         y[i] = y[i] + A[j + (i * n) + 3] * x[j+3];
         y[i] = y[i] + A[j + (i * n) + 4] * x[j+4];
         y[i] = y[i] + A[j + (i * n) + 5] * x[j+5];
         y[i] = y[i] + A[j + (i * n) + 6] * x[j+6];
         y[i] = y[i] + A[j + (i * n) + 7] * x[j+7];
      }
   }

}
