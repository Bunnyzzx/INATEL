package org.example;

public class Cogumelo extends Monstro {

    public Cogumelo(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Refogando o " + getNome() +
                " com azeite e ervas finas!");
    }
}