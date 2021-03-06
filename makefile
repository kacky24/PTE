CC = g++
CFLAGS = -lm -pthread -O2 -march=native -Wall -funroll-loops -Wno-unused-result -lgsl -lm -lgslcblas
# CFLAGS = -lm -pthread -Ofast -march=native -Wall -funroll-loops -Wno-unused-result -lgsl -lm -lgslcblas
LFLAGS = -lgsl -lm -lgslcblas
INCLUDES = -I/usr/local/include -I./eigen-3.3.4
LIBS = -L/usr/local/lib


embidding : linelib.o main.o
	$(CC) $(CFLAGS) -o embedding linelib.o main.o $(INCLUDES) $(LIBS) $(LFLAGS)

linelib.o : linelib.cpp
	$(CC) $(CFLAGS) -c linelib.cpp $(INCLUDES) $(LIBS) $(LFLAGS)

main.o : main.cpp linelib.o
	$(CC) $(CFLAGS) -c main.cpp $(INCLUDES) $(LIBS) $(LFLAGS)

clean :
	rm -rf *.o embedding
