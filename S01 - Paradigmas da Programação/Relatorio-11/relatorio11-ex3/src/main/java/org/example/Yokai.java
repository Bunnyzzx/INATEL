package org.example;

public class Yokai extends Entidade implements Rastreavel {
    private Poder poder;

    public Yokai(String nome) {
        super(nome);
        this.poder = new Poder("Ilusão", 75);
    }

    @Override
    public String obterCoordenadas() {
        return "Yokai [" + getNome() + "] localizado em X:123 Y:456 | Poder: "
                + poder.getNome() + " (intensidade: " + poder.getIntensidade() + ")";
    }
}