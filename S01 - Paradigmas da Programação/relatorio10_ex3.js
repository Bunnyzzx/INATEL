class Criatura {
  constructor(nome, perigo) {
    this.nome = nome;
    this.perigo = perigo;
  }
}

class Diario {
  constructor() {
    this.criaturas = [];
  }

  registrarCriatura(criatura) {
    this.criaturas.push(criatura);
  }

  listarCriaturas() {
    this.criaturas.forEach(c => {
      console.log(`Criatura: ${c.nome} | Perigo: ${c.perigo}`);
    });
  }
}

class Personagem {
  constructor(nome) {
    this.nome = nome;
  }
}

class CabanaMisterio {
  constructor(personagens) {
    this.personagens = personagens;
  }

  listarFuncionarios() {
    this.personagens.forEach(p => console.log(`Funcionario: ${p.nome}`));
  }
}

const diario = new Diario();

diario.registrarCriatura(new Criatura("Gnomo", "Baixo"));
diario.registrarCriatura(new Criatura("Fantasma", "Medio"));
diario.registrarCriatura(new Criatura("Bill Cipher", "Extremo"));

console.log("Criaturas do Diario 3:");
diario.listarCriaturas();

const stan = new Personagem("Grunkle Stan");
const mabel = new Personagem("Mabel");
const soos = new Personagem("Soos");

const cabana = new CabanaMisterio([stan, mabel, soos]);

console.log("\nFuncionarios da Cabana do Misterio:");
cabana.listarFuncionarios();