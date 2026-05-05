#include <iostream>
#include <cmath>
using namespace std;

float multiplicaArray(float arr[], int tamanho) {
    float resultado = 1.0;
    for (int i = 0; i < tamanho; i++) {
        resultado *= arr[i];
    }
    return resultado;
}

int main() {
    int tamanho;
    cout<<"fazer a entrada de quantos valores ele deseja: ";
    cin>>tamanho;
    float arr[tamanho];
    cout<<"fazer a entrada dos valores: ";
    for (int i = 0; i < tamanho; i++) {
        cin>>arr[i];
    }
    float resultado = multiplicaArray(arr, tamanho);
    cout<<"O resultado da multiplicação dos elementos do array é: "<<resultado<<endl;
    return 0;
}
