#include "project/core/mylib.hpp"

#include <iostream>

int main(void)
{
    int* a = new int[9];
    a[10] = 2;

    std::cout << "hello seg fault " << a[10] << std::endl;

    return 0;
}