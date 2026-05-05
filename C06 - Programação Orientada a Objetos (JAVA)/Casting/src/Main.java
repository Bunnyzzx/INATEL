import java.sql.SQLOutput;
import java.util.Locale;
import java.util.Scanner;

public class Main{
    public static void main(String[] args){
       /*  float pi = 3.14159f;
        double pi2 = pi; //Conversao por promoção
        int piInteiro= (int) pi; // Conversao por Casting
        System.out.println(pi);
        System.out.println(piInteiro);
        System.out.println("--------");

        double numero = 2;

        int numero1 = (int) numero;
        System.out.println(numero);
        System.out.println(numero1);
        System.out.println("-------");

        int idade = 21;
        long idade1 = idade; //Conversão por promoção
        int idade2 = (int) idade1; //conversão por casting
        System.out.println(idade);
        System.out.println(idade1);
        System.out.println(idade2);
        System.out.println("------------");

        // Char -> String
        char letra = 'F';
        String letra1 = String.valueOf(letra);
        String letra2 = Character.toString(letra);
        String letra3 = "" + letra;

        // String -> Char
        String faculdade = "Inatel";
        char primeiraletra = faculdade.charAt(0);

        System.out.println("---------");

        //diferentes outs
        System.out.print("Ola mundo");
        System.out.println("Ola mundo 2");
        System.out.printf("Hello world %d", 2); */


        Scanner teclado = new Scanner(System.in);
        teclado.useLocale(Locale.US);

        System.out.println("Entre com sua idade:");
        int idade = teclado.nextInt();

        System.out.println("Entre com sua Altura");
        double altura = teclado.nextDouble();


        teclado.nextLine(); // Limpa o buffer = cin.ignore() e cin.getline()

        System.out.println("Entre com seu nome: ");
        String nome = teclado.nextLine();

        System.out.printf("%d| %.2f| %s \n", idade, altura, nome);


    }
}