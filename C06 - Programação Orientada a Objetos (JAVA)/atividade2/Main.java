package br.inatel.poo;

import br.inatel.poo.turmas.Aluno;
import br.inatel.poo.turmas.Turma;

public class Main {

    public static void main(String[] args) {

        // Instancia a turma
        Turma turma = new Turma();

        // Cria 3 alunos com nomes, matrículas e notas diferentes
        Aluno aluno1 = new Aluno("Ana Paula", "2024001", new double[]{8.5, 7.0, 9.0, 8.0});
        Aluno aluno2 = new Aluno("Carlos Eduardo", "2024002", new double[]{6.0, 7.5, 6.5, 7.0});
        Aluno aluno3 = new Aluno("Beatriz Lima", "2024003", new double[]{9.5, 10.0, 9.0, 9.5});

        // Adiciona os alunos à turma
        turma.adicionarAluno(aluno1);
        turma.adicionarAluno(aluno2);
        turma.adicionarAluno(aluno3);

        // Lista todos os alunos
        turma.listarAlunos();

        // Exibe o melhor aluno
        Aluno melhor = turma.buscarMelhorAluno();
        if (melhor != null) {
            System.out.println("\n===== MELHOR ALUNO DA TURMA =====");
            System.out.println("Nome : " + melhor.getNome());
            System.out.printf("Média: %.2f%n", melhor.calculaMedia());
        }
    }
}
