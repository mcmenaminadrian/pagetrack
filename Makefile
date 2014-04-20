default: all

all: pagetrack

clean:
	rm -f *.o

pagetrack: pagetrack.o
	g++ -O2 -o pagetrack -Wall pagetrack.o -lexpat -lpthread

pagetrack.o: pagetrack.cpp
	g++ -O2 -o pagetrack.o -c -Wall pagetrack.cpp

debug: dpagetrack.o
	g++ -g -o pagetrack -Wall dpagetrack.o -lexpat -lpthread

dpagetrack.o: pagetrack.cpp
	g++ -g -o dpagetrack.o -c -Wall pagetrack.cpp
