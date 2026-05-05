class Heroi:
    def __init__(self, nome: str, funcao: str):
        self.nome = nome
        self.funcao = funcao

    def usar_ultimate(self):
        raise NotImplementedError


class Tanque(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} ativa escudo total e absorve todo o dano!")


class Dano(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} desencadeia uma rajada devastadora de ataques!")


herois = [
    Tanque("Reinhardt", "Tanque"),
    Dano("Reaper", "Dano"),
    Tanque("Orisa", "Tanque"),
    Dano("Soldier76", "Dano"),
]

for heroi in herois:
    heroi.usar_ultimate()