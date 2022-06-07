CC=g++
CFLAGS=-c -Wall

all: lab2

lab2: main.o calculator.o
	$(CC) main.o calculator.o -o lab2

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

calculator.o: calculator.cpp
	$(CC) $(CFLAGS) calculator.cpp

clean:
	rm -rf *.o lab2
