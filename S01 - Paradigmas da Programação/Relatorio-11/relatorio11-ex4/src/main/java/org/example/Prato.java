package org.example;

public class Prato {
    private String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro) {
        this.nome = nome;
        this.monstro = monstro;
        this.tempero = new Tempero("Sal do Mar", 10);
    }

    public void servir() {
        System.out.println("\n=== Prato: " + nome + " ===");
        monstro.virarPrato();
        System.out.println("Tempero usado: " + tempero.getNome() +
                " | Quantidade: " + tempero.getQuantidade() + "g");
    }
}