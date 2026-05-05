class ArmaCorpoACorpo:
    def __init__(self):
        self.tipo = "Faca"

    def __str__(self):
        return f"Arma: {self.tipo}"


class PhantomThieves:
    def __init__(self, nome: str, arma: str):
        self.nome = nome
        self.arma = arma

    def __str__(self):
        return f"Membro: {self.nome} | Arma: {self.arma}"


class Joker:
    def __init__(self, membros: list[PhantomThieves]):
        self._arma = ArmaCorpoACorpo()
        self.membros = membros

    def mostrar_equipe(self):
        print(f"Joker usa: {self._arma}")
        for membro in self.membros:
            print(membro)


equipe = [
    PhantomThieves("Ryuji", "Shotgun"),
    PhantomThieves("Ann", "Chicote"),
    PhantomThieves("Yusuke", "Espada"),
]

joker = Joker(equipe)
joker.mostrar_equipe()