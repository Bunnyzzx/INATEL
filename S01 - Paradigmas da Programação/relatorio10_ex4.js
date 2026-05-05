class Hunter {
  constructor(nome) {
    this.nome = nome;
  }

  lutar() {
    console.log(`${this.nome} usou um ataque generico.`);
  }
}

class Gon extends Hunter {
  constructor() {
    super("Gon");
  }

  lutar() {
    console.log(`${this.nome} usou Jajanken!`);
  }
}

class Killua extends Hunter {
  constructor() {
    super("Killua");
  }

  lutar() {
    console.log(`${this.nome} usou Godspeed!`);
  }
}

class Kurapika extends Hunter {
  constructor() {
    super("Kurapika");
  }

  lutar() {
    console.log(`${this.nome} usou suas Correntes!`);
  }
}

class TrupeFantasma {
  constructor(membros) {
    this.membros = membros;
  }

  revelarMembros() {
    this.membros.forEach(m => console.log(`Membro da Trupe: ${m}`));
  }
}

const gon = new Gon();
const killua = new Killua();
const kurapika = new Kurapika();

gon.lutar();
killua.lutar();
kurapika.lutar();

const trupe = new TrupeFantasma(["Chrollo", "Hisoka", "Feitan"]);

console.log("\nMembros da Trupe Fantasma:");
trupe.revelarMembros();