import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner teclado = new Scanner(System.in);

        int qtdInteira;
        int qtdMeia;

        double valorInteira;
        double valorMeia;

        System.out.print("Quantidade de ingressos inteiros: ");
        qtdInteira = teclado.nextInt();

        System.out.print("Quantidade de ingressos meia: ");
        qtdMeia = teclado.nextInt();

        teclado.nextLine(); // limpar buffer

        System.out.print("Valor do ingresso inteiro: ");
        String entradaInteira = teclado.nextLine();
        entradaInteira = entradaInteira.replace(",", ".");
        valorInteira = Double.parseDouble(entradaInteira);

        System.out.print("Valor do ingresso meia: ");
        String entradaMeia = teclado.nextLine();
        entradaMeia = entradaMeia.replace(",", ".");
        valorMeia = Double.parseDouble(entradaMeia);

        double totalInteira = qtdInteira * valorInteira;
        double totalMeia = qtdMeia * valorMeia;

        double totalSessao = totalInteira + totalMeia;

        int totalIngressos = qtdInteira + qtdMeia;

        double media = totalSessao / totalIngressos;

        System.out.println("Total arrecadado com inteiros: " + totalInteira);
        System.out.println("Total arrecadado com meia: " + totalMeia);
        System.out.println("Total arrecadado na sessão: " + totalSessao);
        System.out.println("Valor médio por ingresso: " + media);

        teclado.close();
    }
}