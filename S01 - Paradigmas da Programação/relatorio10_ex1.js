class Pokemon {
  #vida;

  constructor(nome, tipo, vida = 100) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vida;
  }

  get vida() {
    return this.#vida;
  }

  atacar() {
    console.log(`${this.nome} usou um ataque genérico!`);
  }

  receber_dano(dano) {
    this.#vida -= dano;
    if (this.#vida < 0) this.#vida = 0;
    console.log(`${this.nome} recebeu ${dano} de dano! Vida restante: ${this.#vida}`);
  }
}

class Pikachu extends Pokemon {
  constructor() {
    super("Pikachu", "Elétrico", 100);
  }

  atacar() {
    console.log(`${this.nome} usou Thunderbolt!`);
  }
}

class Charizard extends Pokemon {
  constructor() {
    super("Charizard", "Fogo/Voador", 150);
  }

  atacar() {
    console.log(`${this.nome} usou Lanca-Chamas!`);
  }
}

const pikachu = new Pikachu();
const charizard = new Charizard();

pikachu.atacar();
charizard.atacar();

pikachu.receber_dano(30);
charizard.receber_dano(200);

console.log(`Vida do Pikachu: ${pikachu.vida}`);
console.log(`Vida do Charizard: ${charizard.vida}`);