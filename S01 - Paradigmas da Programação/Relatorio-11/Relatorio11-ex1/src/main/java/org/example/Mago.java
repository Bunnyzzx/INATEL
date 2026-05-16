package org.example;

public class Mago extends Personagem {

    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o mago " + getNome() + " e não tenho mana, por isso ando com uma AK-47");

    }
}
