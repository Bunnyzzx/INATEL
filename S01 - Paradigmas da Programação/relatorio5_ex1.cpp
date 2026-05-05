#include <iostream>
#include <cmath>
using namespace std;

int fibbonacci(int n) {
    if (n == 1) {
        return 1;
    }
    if (n == 0) {
        return 0;
    }
    else {
        return fibbonacci(n - 1) + fibbonacci(n - 2);
    }
}

int main() {
    int n;
    cout << "Digite o valor N: ";
    cout << '' ;
    cin >> n;
    cout << "Sequência de Fibbonacci: ";
    for (int i = 0; i < n; i++) {
        cout << fibbonacci(i) << " ";
    }
    cout << endl;
    return 0;
}
