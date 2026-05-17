package org.example;

public class Lagosta extends Monstro {

    public Lagosta(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Preparando " + getNome() +
                " grelhada com manteiga e alho!");
    }
}