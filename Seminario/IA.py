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

'''
Este código implementa un sistema experto simple en Python utilizando la biblioteca `pyknow` para recomendar el medio de transporte adecuado en función de la distancia proporcionada.

Aquí está una descripción de lo que hace este código:

1. Importa la biblioteca `pyknow`, que se utiliza para crear sistemas expertos en Python.

2. Define una clase llamada `SistemaExpertoTransporte` que hereda de `KnowledgeEngine`, la clase base proporcionada por `pyknow` para definir el sistema experto.

3. Dentro de la clase `SistemaExpertoTransporte`, se definen las reglas que el sistema experto debe seguir para tomar una decisión basada en la distancia proporcionada. Estas reglas se definen utilizando el decorador `@Rule`. Hay tres reglas:

   - `usar_transporte_terrestre`: Si la distancia es menor a 200 kilómetros, el sistema experto recomienda el "Transporte Terrestre".
   - `usar_transporte_maritimo`: Si la distancia está entre 200 y 1000 kilómetros (inclusive), el sistema experto recomienda el "Transporte Marítimo".
   - `usar_transporte_aereo`: Si la distancia es igual o mayor a 1000 kilómetros, el sistema experto recomienda el "Transporte Aéreo".

4. La función `main()` se utiliza para ejecutar el sistema experto. Dentro de `main()`, se crea una instancia de `SistemaExpertoTransporte` llamada `sistema_experto`.

5. El usuario ingresa la distancia que se va a transportar en kilómetros.

6. La distancia ingresada se declara como un hecho utilizando `sistema_experto.declare(Fact(distancia=distancia))`.

7. Se ejecuta el sistema experto con `sistema_experto.run()`. El sistema experto aplicará las reglas definidas anteriormente para tomar una decisión basada en la distancia proporcionada.

8. Finalmente, se muestra la recomendación tomada por el sistema experto, que se almacena en el hecho `Fact(decision="Transporte Terrestre")`, utilizando `sistema_experto.facts[Fact(decision="Transporte Terrestre")].decision`. La recomendación se imprime en la pantalla.

En resumen, este sistema experto toma una distancia ingresada por el usuario y, en función de esa distancia, recomienda el medio de transporte adecuado, ya sea terrestre, marítimo o aéreo.
'''