package br.inatel.poo.turmas;

public class Aluno {

    private String nome;
    private String matricula;
    private double[] notas;

    public Aluno(String nome, String matricula, double[] notas) {
        this.nome = nome;
        this.matricula = matricula;
        this.notas = notas;
    }

    public String getNome() {
        return nome;
    }

    public String getMatricula() {
        return matricula;
    }

    public double[] getNotas() {
        return notas;
    }

    public double calculaMedia() {
        if (notas == null || notas.length == 0) return 0;
        double soma = 0;
        for (double nota : notas) {
            soma += nota;
        }
        return soma / notas.length;
    }

    public void mostraInfo() {
        System.out.println("-----------------------------");
        System.out.println("Nome     : " + nome);
        System.out.println("Matrícula: " + matricula);
        System.out.print("Notas    : ");
        for (int i = 0; i < notas.length; i++) {
            System.out.print(notas[i]);
            if (i < notas.length - 1) System.out.print(", ");
        }
        System.out.println();
        System.out.printf("Média    : %.2f%n", calculaMedia());
    }
}
