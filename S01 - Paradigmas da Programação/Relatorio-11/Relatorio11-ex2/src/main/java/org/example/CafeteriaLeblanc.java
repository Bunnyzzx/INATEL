package org.example;

public class CafeteriaLeblanc {

    private Menu menu;

    public CafeteriaLeblanc() {
        this.menu = new Menu();
    }

    public void adicionarCafe(Cafe cafe) {
        menu.adicionarCafe(cafe);
    }

    public void abrirCafeteria() {
        System.out.println("Bem-vindo à Cafeteria Leblanc!");
        menu.exibirMenu();
    }
}