CC = g++
CFLAGS = -lm -pthread -Ofast -march=native -Wall -funroll-loops -Wno-unused-result -lgsl -lm -lgslcblas
LFLAGS = -lgsl -lm -lgslcblas

pte : linelib.o main.o
	$(CC) $(CFLAGS) -o pte linelib.o main.o $(LFLAGS)

linelib.o : linelib.cpp
	$(CC) $(CFLAGS) -c linelib.cpp $(LFLAGS)

main.o : main.cpp linelib.o
	$(CC) $(CFLAGS) -c main.cpp $(LFLAGS)

clean :
	rm -rf *.o pte
