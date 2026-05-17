package org.example;

import java.util.HashMap;

public class RegistroOculto {
    private HashMap<String, Entidade> entidades;

    public RegistroOculto() {
        this.entidades = new HashMap<>();
    }

    public void registrarEntidade(Entidade entidade) {
        if (entidades.containsKey(entidade.getNome())) {
            System.out.println("Aviso: " + entidade.getNome() + " já está registrado!");
        } else {
            entidades.put(entidade.getNome(), entidade);
            System.out.println(entidade.getNome() + " registrado com sucesso.");
        }
    }

    public void listarEntidades() {
        System.out.println("\n--- Entidades Registradas ---");
        for (HashMap.Entry<String, Entidade> entrada : entidades.entrySet()) {
            Entidade entidade = entrada.getValue();
            if (entidade instanceof Rastreavel rastreavel) {
                System.out.println(rastreavel.obterCoordenadas());
            }
        }
    }
}