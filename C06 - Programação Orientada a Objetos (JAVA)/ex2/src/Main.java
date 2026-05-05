
public class Main {
    public static void main(String[] args) {
        int qntIngInt = 8;
        int qntIngMeia = 5;
        double valint = 30.00;
        double valmeia = 15.00;

        double totint = valint  * qntIngInt ;
        double totmeia = valmeia * qntIngMeia;
        double total = totint + totmeia;

        System.out.println("Total Meia: " + totmeia);
        System.out.println("Total Inteira: " + totint);
        System.out.println("Total Geral: " + total);

    }
}