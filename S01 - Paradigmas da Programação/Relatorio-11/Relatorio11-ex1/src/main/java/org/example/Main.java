package org.example;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        Mago howl = new Mago("Howl", 27);
        howl.apresentar();

        System.out.println("---");

        Divisao quarto = new Divisao("Quarto", "Dormitório");
        Divisao laboratorio = new Divisao("Laboratório", "Criação de feitiços");
        Divisao cozinha = new Divisao("Cozinha", "Preparo de poções");
        Divisao bar = new Divisao("bar", "onde os mago vai tomar uma pinga boa");

        ArrayList<Divisao> divisoes = new ArrayList<>();
        divisoes.add(quarto);
        divisoes.add(laboratorio);
        divisoes.add(bar);

        CasteloAnimado castelo = new CasteloAnimado(divisoes);

        castelo.adicionarDivisao(cozinha);

        castelo.listarDivisoes();
        System.out.println("RODOU MONITORES QUERIDOS #OBRIGADOALURA #UMDIAAPRENDOJAVA");
    }
}