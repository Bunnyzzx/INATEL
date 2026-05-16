package org.example;

public abstract class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    // Getters aqui meu monitor
    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    // Setter do nome aqui meu monitor (pedrao ou felipe)
    public void setNome(String nome) {
        this.nome = nome;
    }

    public abstract void apresentar();
}
