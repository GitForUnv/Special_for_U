OBJ = main.o fun.o
CXX = g++
OBJ2 = main2.o fun2.o
all: program program2

program2: $(OBJ2)
	$(CXX) -o program2 $(OBJ2) 
program: $(OBJ)
	$(CXX) -o program $(OBJ)
program.o: main.cpp fun.h
	$(CXX) -c -o program.o $<
$(OBJS): %.o: %.cpp
	$(CXX) -c -o $@ $<

clean:
	rm -f *.o

.PHONY: clean all
