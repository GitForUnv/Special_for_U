OBJ = main.o fun.o
CXX = g++
all: program program2

program2: main2.cpp
	$(CXX) -o program2 $< 
program: $(OBJ)
	$(CXX) -o program $(OBJ)
program.o: main.cpp fun.h
	$(CXX) -c -o program.o $<
$(OBJS): %.o: %.cpp
	$(CXX) -c -o $@ $<

clean:
	rm -f *.o

.PHONY: clean all
