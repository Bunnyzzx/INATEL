#include <iostream>
using namespace std;

int main() {
    int sala[5][5] = {0};
    int opcao;

    while (true) {
        cout << "=== Cinema Digital ===" << endl;
        cout << "1. Reservar Assento" << endl;
        cout << "2. Ver Mapa da Sala" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        if (opcao == 1) {
            int f, c;
            cout << "Informe a fileira (0-4): ";
            cin >> f;
            cout << "Informe a coluna (0-4): ";
            cin >> c;

            if (f < 0 || f > 4 || c < 0 || c > 4) {
                cout << "Posicao invalida!" << endl;
            } else if (sala[f][c] == 0) {
                sala[f][c] = 1;
                cout << "Sucesso!" << endl;
            } else {
                cout << "Erro: Assento ocupado!" << endl;
            }

        } else if (opcao == 2) {
            cout << "\nMapa da Sala:" << endl;
            cout << "   ";
            for (int c = 0; c < 5; c++)
                cout << " C" << c;
            cout << endl;

            for (int f = 0; f < 5; f++) {
                cout << "F" << f << " ";
                for (int c = 0; c < 5; c++) {
                    cout << "[" << sala[f][c] << "]";
                }
                cout << endl;
            }

        } else if (opcao == 3) {
            break;
        } else {
            cout << "Opcao invalida!" << endl;
        }
    }

    // Relatório Final
    int ocupados = 0, vazios = 0;
    for (int f = 0; f < 5; f++)
        for (int c = 0; c < 5; c++)
            sala[f][c] == 1 ? ocupados++ : vazios++;

    cout << "\n=== Relatorio Final ===" << endl;
    cout << "Assentos ocupados: " << ocupados << endl;
    cout << "Assentos vazios:   " << vazios << endl;

    return 0;
}
