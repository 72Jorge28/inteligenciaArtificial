# Importar la biblioteca para sistemas expertos en Python (pyknow)
from pyknow import *

# Definir la clase principal del sistema experto
class SistemaExpertoTransporte(KnowledgeEngine):
    @DefFacts()
    def _initial_action(self):
        yield Fact(decision=None)

    @Rule(AND(Fact(decision=None), Fact(distancia=P(lambda x: x < 200))))
    def usar_transporte_terrestre(self):
        self.declare(Fact(decision="Transporte Terrestre"))

    @Rule(AND(Fact(decision=None), Fact(distancia=P(lambda x: 200 <= x < 1000))))
    def usar_transporte_maritimo(self):
        self.declare(Fact(decision="Transporte Marítimo"))

    @Rule(AND(Fact(decision=None), Fact(distancia=P(lambda x: x >= 1000))))
    def usar_transporte_aereo(self):
        self.declare(Fact(decision="Transporte Aéreo"))

# Función principal para ejecutar el sistema experto
def main():
    sistema_experto = SistemaExpertoTransporte()

    # Ingresa la distancia del transporte como un hecho
    distancia = int(input("Ingresa la distancia a transportar (en kilómetros): "))
    sistema_experto.declare(Fact(distancia=distancia))

    # Ejecuta el sistema experto
    sistema_experto.run()

    # Muestra la decisión tomada por el sistema experto
    print("La recomendación es utilizar:", sistema_experto.facts[Fact(decision="Transporte Terrestre")].decision)

if __name__ == "__main__":
    main()
