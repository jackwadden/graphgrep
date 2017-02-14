TARGET = graphgrep
IDIR = <HYPERSCAN SRC>
HSLIB = <HYPERSCAN LIB DIR>
CC = g++
CFLAGS= -O3 -I $(IDIR) -L $(HSLIB) -lhs --std=c++11

all: $(TARGET)

$(TARGET): graphgrep.c
	$(CC) -o $(TARGET) graphgrep.c $(CFLAGS)

clean:
	rm $(TARGET)
