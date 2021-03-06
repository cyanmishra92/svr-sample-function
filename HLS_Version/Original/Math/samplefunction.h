#ifndef _SAMPLEFUNCTION_H_
#define _SAMPLEFUNCTION_H_

#define INPUT_WIDTH 6144
#define INPUT_HEIGHT 4096
#define fw 1080
#define fh 1200
#define fov_x  110
#define fov_y  110

#include "ap_fixed.h"
#include "hls_math.h"

typedef ap_fixed<17,14> indices;
typedef ap_fixed<28,10> fp;
typedef ap_fixed<20,10> angle;


void crt(

	double ht,
	double hp,
	int fov[fh][fw][2]

);

int nearestNeighbor(indices num);

fp toRadian(fp a);

fp absVal(fp num);

void spherical2cartesian(

	fp the,
	fp phi,
	fp result [3]
);

void spherical2coordinates(

	fp the,
	fp phi,
	indices result [2]
);

void cartesian2coordinates(

	fp x,
	fp y,
	fp z,
	indices result [2]

);

void matrixMultiplication(

	fp vector[3],
	fp matrix[3][3],
	fp result[3]

);

void findPixel(

	int index,
	fp x,
	fp y,
	indices result [2]

);

void convert_xyz_to_cube_uv(

	fp x,
	fp y,
	fp z,
	indices result [2]

);

//void findPixel_EAC(
//
//	int index,
//	fp u,
//	fp v,
//	indices result [2]
//
//);

//void convert_EAC(
//
//	fp x,
//	fp y,
//	fp z,
//	indices result [2]
//
//);


#endif
