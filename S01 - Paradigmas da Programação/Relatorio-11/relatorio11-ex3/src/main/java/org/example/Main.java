package org.example;

public class Main {
    public static void main(String[] args) {

        RegistroOculto registro = new RegistroOculto();

        Alien alien1 = new Alien("Zorg");
        Alien alien2 = new Alien("Xenu");
        Youkai youkai1 = new Youkai("Kitsune");
        Youkai youkai2 = new Youkai("Tengu");

        registro.registrarEntidade(alien1);
        registro.registrarEntidade(alien2);
        registro.registrarEntidade(youkai1);
        registro.registrarEntidade(youkai2);

        // Tentando registrar duplicatas
        registro.registrarEntidade(alien1);
        registro.registrarEntidade(youkai1);

        registro.listarEntidades();
    }
}