#include <stdio.h>

void countCalls()
{
    static int callCount = 0; // 静态局部变量
    if (callCount <= 50){
        callCount++;
    }
    else
        callCount = 0;
    return callCount;
}

int main()
{
    countCalls(); // 输出 "This function has been called 1 times."
    countCalls(); // 输出 "This function has been called 2 times."
    // ...
    return 0;
}