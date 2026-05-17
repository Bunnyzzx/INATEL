package org.example;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        Lagosta lagosta = new Lagosta("Lagosta Gigante");
        Cogumelo cogumelo = new Cogumelo("Cogumelo Roxo");

        Prato prato1 = new Prato("Lagosta Grelhada", lagosta);
        Prato prato2 = new Prato("Refogado de Cogumelo", cogumelo);

        ArrayList<Prato> cardapio = new ArrayList<>();
        cardapio.add(prato1);
        cardapio.add(prato2);

        System.out.println("=== Cardápio ===");
        for (Prato prato : cardapio) {
            prato.servir();
        }
    }
}