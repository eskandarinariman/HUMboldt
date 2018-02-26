#ifndef KMEANS_H
#define KMEANS_H

#include <stdint.h>
#include <time.h>

#define FLT_MAX 3.40282347e+38

uint64_t time_diff(struct timespec start, struct timespec end);

int read_data(float *data, ssize_t size, const char *filename);

void cpu_sum_clusters(const float *data, const int *membership, int *clusters_members,
 		float *clusters_sums, long nvectors, int ndims, int nclusters);

#endif // KMEANS_H
