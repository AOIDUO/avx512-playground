#include <iostream>
#include <benchmark/benchmark.h>
#include <thread>
#include <time.h>
#include <stdlib.h>


#include "vector.cpp"

static void bench(benchmark::State& state) {
    int src_size = 1024*64;
    int dst_size = 128;
    int * src_ptr = (int *) malloc(src_size * sizeof (int));
    int * dst_ptr = (int *) malloc(dst_size * sizeof(int));

    for (int i = 0; i < src_size; i += 1 ){
      src_ptr[i] = rand();
    }

  for (auto _ : state) {
    // vec_add(src_size, src_ptr, dst_size, dst_ptr, 8);
    // vec_add(src_size, src_ptr, dst_size, dst_ptr, 16);
    // vec_add(src_size, src_ptr, dst_size, dst_ptr, 32);
    vec_add(src_size, src_ptr, dst_size, dst_ptr, 64);
  }
  printf("%x\n",dst_ptr);
}

BENCHMARK(bench);
BENCHMARK_MAIN();