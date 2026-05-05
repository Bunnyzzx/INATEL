package br.inatel.poo.turmas;

import java.util.ArrayList;
import java.util.List;

public class Turma {

    private int quantidadeAlunos;
    private List<Aluno> alunos;

    public Turma() {
        this.alunos = new ArrayList<>();
        this.quantidadeAlunos = 0;
    }

    public void adicionarAluno(Aluno aluno) {
        alunos.add(aluno);
        quantidadeAlunos++;
    }

    public void listarAlunos() {
        if (alunos.isEmpty()) {
            System.out.println("Nenhum aluno cadastrado na turma.");
            return;
        }
        System.out.println("===== LISTA DE ALUNOS =====");
        for (Aluno aluno : alunos) {
            aluno.mostraInfo();
        }
        System.out.println("-----------------------------");
        System.out.println("Total de alunos: " + quantidadeAlunos);
    }

    public Aluno buscarMelhorAluno() {
        if (alunos.isEmpty()) return null;

        Aluno melhor = alunos.get(0);
        for (Aluno aluno : alunos) {
            if (aluno.calculaMedia() > melhor.calculaMedia()) {
                melhor = aluno;
            }
        }
        return melhor;
    }
}
