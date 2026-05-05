using System;
using System.Collections.Generic;

class ReliquiaMagica
{
    public string NomeItem { get; set; }

    public ReliquiaMagica(string nomeItem)
    {
        NomeItem = nomeItem;
    }
}

class BauDeReliquias
{
    private List<ReliquiaMagica> reliquias = new List<ReliquiaMagica>();

    public void GuardarItem(ReliquiaMagica item)
    {
        reliquias.Add(item);
        Console.WriteLine($"Relíquia '{item.NomeItem}' guardada no baú.");
    }

    public void ListarReliquias()
    {
        Console.WriteLine("-- Relíquias no Baú --");
        foreach (var r in reliquias)
            Console.WriteLine($"  - {r.NomeItem}");
    }
}

class ItemDeAcampamento
{
    public string NomeItem { get; set; }

    public ItemDeAcampamento(string nomeItem)
    {
        NomeItem = nomeItem;
    }
}

class Maga
{
    public string Nome { get; set; }

    // Composição: Baú é criado dentro da própria Maga
    private BauDeReliquias bau = new BauDeReliquias();

    // Agregação: lista de itens recebida externamente
    private List<ItemDeAcampamento> itensAcampamento;

    public Maga(string nome, List<ItemDeAcampamento> itens)
    {
        Nome = nome;
        itensAcampamento = itens;
    }

    public void AdicionarReliquiaAoBau(ReliquiaMagica item)
    {
        bau.GuardarItem(item);
    }

    public void ListarItensAcampamento()
    {
        Console.WriteLine($"\n-- Itens de Acampamento de {Nome} --");
        foreach (var item in itensAcampamento)
            Console.WriteLine($"  - {item.NomeItem}");
    }

    public void MostrarBau()
    {
        bau.ListarReliquias();
    }
}

class Program
{
    static void Main()
    {
        // Agregação: lista criada fora da Maga
        List<ItemDeAcampamento> itens = new List<ItemDeAcampamento>
        {
            new ItemDeAcampamento("Saco de Dormir"),
            new ItemDeAcampamento("Pote de Cozinha")
        };

        Maga frieren = new Maga("Frieren", itens);

        // Composição: adicionando relíquias ao baú interno
        frieren.AdicionarReliquiaAoBau(new ReliquiaMagica("Anel de Prata"));
        frieren.AdicionarReliquiaAoBau(new ReliquiaMagica("Grimório Antigo"));

        frieren.ListarItensAcampamento();
        frieren.MostrarBau();
    }
}