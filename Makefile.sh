OBJ = main.o fun.o
CXX = g++
program: $(OBJ)
	$(CXX) -o program $(OBJ)
program.o: main.cpp fun.h
	(CXX) -c -o program.o $<
fun.o: fun.cpp fun.h
	(CXX) -c -o fun.o $<
