#include <iostream>
using namespace std;


int sub(int a, int b) {
	return a - b;
}

int add(int a, int b) {
	return a + b;
}

int main(void)
{
	cout << add(1, 2) << endl;
	cout << sub(1, 2) << endl;

	return 0;
}
