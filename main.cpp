#include <iostream>
#include "fun.h"
using namespace std;
int main(int argc, char* argv[]){
	double wynik_dodawania = dodaj(stod(argv[1]), stod(argv[2]));
	cout<<"Wynik dodawania" << wynik_dodawania <<" "<<endl;
	return 0;
}
