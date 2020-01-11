CC = g++
CFLAGS = -lm -pthread -Ofast -march=native -Wall -funroll-loops -Wno-unused-result -lgsl -lm -lgslcblas

infer : infer.cpp
	$(CC) $(CFLAGS) infer.cpp -o infer

clean :
	rm -rf *.o infer
