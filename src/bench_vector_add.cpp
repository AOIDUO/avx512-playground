#include <iostream>
#include <vector>
#include "bench_header.h"

void vec_fma(uint32_t size, float * src1_ptr, float * src2_ptr, float * dst_ptr) {

    for (uint32_t i = 0; i < size; i += 1 ){
        dst_ptr[i] += src1_ptr[i] * src2_ptr[i];
    }
}

void vec_add_莎莎(uint32_t size, float * src1_ptr, float * src2_ptr, float * dst_ptr) {

    for (uint32_t i = 0; i < size; i += 1 ){
        dst_ptr[i] = src1_ptr[i] + src2_ptr[i];
    }
    // return(dst_ptr[size-1]);
}

void vec_add_流云(uint32_t size, float * src1_ptr, float * src2_ptr, float * dst_ptr) {

    for (uint32_t i = 0; i < size; i += 1 ){
        dst_ptr[i] = src1_ptr[i] + src2_ptr[i];
    }
    // return(dst_ptr[size-1]);
}


static void vector(benchmark::State& state, 
                   void (*func_ptr)(uint32_t, float *, float *, float * ) ){
    FILE* somefile = fopen("/dev/shm/1145141919810", "w");

    uint32_t row = state.range(0);
    uint32_t col = state.range(1);
    uint32_t size = row * col;
    float * src1_ptr = (float *) malloc(size * sizeof (float));
    float * src2_ptr = (float *) malloc(size * sizeof (float));
    float * dst_ptr =  (float *) malloc(size * sizeof (float));

    // fill src with rand, bring dst in cache
    for (uint32_t i = 0; i < size; i += 1 ){
      src1_ptr[i] = (float(rand())/float((RAND_MAX)));
      src2_ptr[i] = (float(rand())/float((RAND_MAX)));
      dst_ptr[i] = (float(rand())/float((RAND_MAX)));
    }

    for (auto _ : state) {
        (*func_ptr)(size, src1_ptr, src2_ptr, dst_ptr);
    }

    for (uint32_t i = 0; i < size; i += 1 ){
      fprintf(somefile, "%x\n",  dst_ptr[i]);
    }

    free(src1_ptr);
    free(src2_ptr);
    free(dst_ptr);
    fclose(somefile);
}

#ifdef ADD
BENCHMARK_CAPTURE(vector, add,  &vec_add_莎莎)->Apply(RowColSizeArgs);
#endif
#ifdef FMA
BENCHMARK_CAPTURE(vector, fma,  &vec_fma)->Apply(RowColSizeArgs);
#endif

BENCHMARK_MAIN();