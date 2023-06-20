#include <iostream>
#include <cstdlib>
#include <cmath>
#include <chrono>
#include <cstring>
#include <limits.h>

using namespace std::chrono;
using namespace std;
#define STARTING_SEED 1070

#define fptype double

void vecAdd(fptype* X, fptype* Y, size_t numElements){

#pragma omp target teams distribute parallel for \
  map(from:Y[0:numElements]) map(to: X[0:numElements])
  for (size_t i = 0; i < numElements; i++){
    Y[i] += X[i];
  }

}

int main(int argc, char *argv[]){
  size_t numElements = (atol(argv[1])*1024*1024)/sizeof(fptype);
  std::cout << "Num Elements:" << numElements << "\n";

  fptype *X = new fptype[numElements];
  fptype *Y = new fptype[numElements];
  memset((void*)X,1, sizeof(fptype)*numElements);
  auto start = high_resolution_clock::now();
  vecAdd(X, Y, numElements);
  auto stop = high_resolution_clock::now();

  std::chrono::duration<double> duration = stop - start;
  std::cout<<"__ExecutionTime__:" << duration.count() << "\n";

  delete [] X;
  delete [] Y;
  return 0;
}
