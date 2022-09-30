#include <iostream>
#include <gtest/gtest.h>
using namespace std;

int sub(int a, int b) {
	return a - b;
}

int add(int a, int b) {
	return a + b;
}

TEST(AddTest, simpleAdd) {
	EXPECT_EQ(add(1, 2), 3);
}

// int main(void)
// {
// 	cout << add(1, 2) << endl;
// 	cout << sub(1, 2) << endl;

// 	return 0;
// }
