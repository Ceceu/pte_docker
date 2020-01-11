CC = g++
CFLAGS = -lm -pthread -Ofast -march=native -Wall -funroll-loops -Wno-unused-result -lgsl -lm -lgslcblas

data2dl data2w: data2dl.cpp data2w.cpp
	$(CC) $(CFLAGS) data2dl.cpp -o data2dl
	$(CC) $(CFLAGS) data2w.cpp -o data2w

clean :
	rm -rf *.o data2dl data2w
