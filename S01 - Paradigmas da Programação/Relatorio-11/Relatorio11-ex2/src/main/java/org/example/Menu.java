package org.example;

import java.util.ArrayList;

public class Menu {

    private ArrayList<Cafe> cafes;

    public Menu() {
        this.cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe cafe) {
        cafes.add(cafe);
    }

    public void exibirMenu() {
        for (Cafe cafe : cafes) {
            System.out.println("Nome: " + cafe.getNome() +
                    " | Preço Final: R$ " + cafe.calcularPrecoFinal());
        }
    }
}