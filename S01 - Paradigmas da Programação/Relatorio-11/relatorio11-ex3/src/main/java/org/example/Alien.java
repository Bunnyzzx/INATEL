package org.example;

public class Alien extends Entidade implements Rastreavel {
    private Poder poder;

    public Alien(String nome) {
        super(nome);
        this.poder = new Poder("Teletransporte", 90);
    }

    @Override
    public String obterCoordenadas() {
        return "Alien [" + getNome() + "] localizado em X:452 Y:789 | Poder: "
                + poder.getNome() + " (intensidade: " + poder.getIntensidade() + ")";
    }
}