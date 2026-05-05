#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    double saldo;
    int opcao;
    double valor;

    cout << fixed << setprecision(2);
    cout << "=== Banco Digital ===" << endl;
    cout << "Informe seu saldo inicial: R$ ";
    cin >> saldo;

    do {
        cout << "\n--- Menu ---" << endl;
        cout << "1. Ver Saldo" << endl;
        cout << "2. Depositar" << endl;
        cout << "3. Sacar" << endl;
        cout << "4. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1:
                cout << "Saldo atual: R$ " << saldo << endl;
                break;

            case 2:
                cout << "Valor para depositar: R$ ";
                cin >> valor;
                if (valor > 0) {
                    saldo += valor;
                    cout << "Deposito realizado! Novo saldo: R$ " << saldo << endl;
                } else {
                    cout << "Valor invalido!" << endl;
                }
                break;

            case 3:
                cout << "Valor para sacar: R$ ";
                cin >> valor;
                if (valor > saldo) {
                    cout << "Saldo Insuficiente!" << endl;
                } else if (valor > 0) {
                    saldo -= valor;
                    cout << "Saque realizado! Novo saldo: R$ " << saldo << endl;
                } else {
                    cout << "Valor invalido!" << endl;
                }
                break;

            case 4:
                cout << "Saindo... Saldo final: R$ " << saldo << endl;
                break;

            default:
                cout << "Opcao invalida!" << endl;
        }

    } while (opcao != 4);

    return 0;
}
