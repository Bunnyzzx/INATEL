import java.util.Locale;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        teclado.useLocale(Locale.US);

        System.out.println("Qnt primeira hora");
        int primeiraHora = teclado.nextInt();
        System.out.println("Qnt segunda hora");
        int segundaHora = teclado.nextInt();
        System.out.println("Qnt terceira hora");
        int terceiraHora = teclado.nextInt();

        int soma = primeiraHora + segundaHora + terceiraHora;
        double media = soma / 3;

        System.out.println("Total: " + soma);
        System.out.println("Média: " + media);
    }
}