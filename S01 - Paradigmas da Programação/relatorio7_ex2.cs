using System;
using System.Collections.Generic;

class CriaturaPokemon
{
    public string Especie;

    public virtual void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} executa um ataque genérico!");
    }
}

class TipoFogo : CriaturaPokemon
{
    public override void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} lança uma rajada de chamas!");
    }
}

class TipoAgua : CriaturaPokemon
{
    public override void ExecutarMovimento()
    {
        Console.WriteLine($"{Especie} dispara uma bolha de água!");
    }
}

class Program
{
    static void Main()
    {
        List<CriaturaPokemon> lista = new List<CriaturaPokemon>();

        TipoFogo scorbunny = new TipoFogo { Especie = "Scorbunny" };
        TipoAgua greninja = new TipoAgua { Especie = "Greninja" };

        lista.Add(scorbunny);
        lista.Add(greninja);

        foreach (CriaturaPokemon p in lista)
        {
            p.ExecutarMovimento();
        }
    }
}