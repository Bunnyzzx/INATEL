package org.example;

public class Main {

    public static void main(String[] args) {

        CafeteriaLeblanc cafeteria = new CafeteriaLeblanc();

        cafeteria.adicionarCafe(new Cafe("Espresso", 5.0));
        cafeteria.adicionarCafe(new Cafe("Cappuccino", 7.0));
        cafeteria.adicionarCafe(new CafeGourmet("Arábica Especial", 8.0, 2.5));

        cafeteria.abrirCafeteria();
    }
}