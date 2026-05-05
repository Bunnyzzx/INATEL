class Habilidade {
  usar() {
    throw new Error("O metodo usar() deve ser sobrescrito.");
  }
}

class Smoke extends Habilidade {
  usar() {
    console.log("Usando Smoke: area bloqueada com fumaca.");
  }
}

class Flash extends Habilidade {
  usar() {
    console.log("Usando Flash: inimigos cegados.");
  }
}

class Dash extends Habilidade {
  usar() {
    console.log("Usando Dash: movimento rapido executado.");
  }
}

class Armadilha extends Habilidade {
  usar() {
    console.log("Usando Armadilha: armadilha posicionada.");
  }
}

class Agente {
  constructor(nome, funcao, habilidade) {
    this.nome = nome;
    this.funcao = funcao;
    this.habilidade = habilidade;
  }

  entrarEmCombate() {
    console.log(`${this.nome} (${this.funcao}) entrou em combate!`);
    this.habilidade.usar();
  }
}

class Time {
  constructor(agentes) {
    this.agentes = agentes;
  }

  iniciarPartida() {
    this.agentes.forEach(agente => agente.entrarEmCombate());
  }

  listarControladores() {
    return this.agentes.filter(agente => agente.habilidade instanceof Smoke);
  }
}

const omen = new Agente("Omen", "Controlador", new Smoke());
const skye = new Agente("Skye", "Iniciador", new Flash());
const jett = new Agente("Jett", "Duelista", new Dash());
const cypher = new Agente("Cypher", "Sentinela", new Armadilha());

const time = new Time([omen, skye, jett, cypher]);

time.iniciarPartida();

console.log("\nControladores do time:");
time.listarControladores().forEach(agente => console.log(agente.nome));