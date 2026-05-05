from abc import ABC, abstractmethod


class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass


class Implante:
    def __init__(self, custo: float, funcao: str):
        self.custo = custo
        self.funcao = funcao


class NetRunner(Cibernetico):
    def __init__(self, nome: str, custo: float, funcao: str):
        self.nome = nome
        self._implante = Implante(custo, funcao)

    def realizar_hack(self):
        print(f"{self.nome} executa hack via implante '{self._implante.funcao}' (custo: {self._implante.custo}eb)")


class Faccao:
    def __init__(self, membros: list[Cibernetico]):
        self.membros = membros

    def executar_hacks(self):
        for membro in self.membros:
            membro.realizar_hack()


faccao = Faccao([
    NetRunner("Alt", 5000.0, "Soulkiller"),
    NetRunner("Rogue", 3200.0, "ICEbreaker"),
    NetRunner("T-Bug", 2800.0, "Ghost Protocol"),
])

faccao.executar_hacks()