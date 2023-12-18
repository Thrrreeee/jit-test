#include <iostream>
#include <stdio.h>
#include <pthread.h>

// Thread-local variable
__thread int threadLocalVar = 0;

void *threadFunction(void *arg) {
    threadLocalVar = *(int*)arg;
    std::cout << "Thread " << *(int*)arg << ": threadLocalVar = " << threadLocalVar << std::endl;
    return NULL;
}

int main() {
    pthread_t thread1, thread2;
    int value1 = 1, value2 = 2;

    pthread_create(&thread1, NULL, threadFunction, &value1);
    pthread_create(&thread2, NULL, threadFunction, &value2);

    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);

    return 0;
}

