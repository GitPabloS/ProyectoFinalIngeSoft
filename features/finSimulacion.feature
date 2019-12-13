Feature:
    Como Jugador
    Quiero el resultadoSimulacion
    Para ver donde quedara mi nave

    Scenario:
    Given visito la pagina del resultadoSimulacion
    Then deberia ver el mensaje de la posicion final "El carro termino en la posicion: "

    Scenario:
    Given visito la pagina del resultadoSimulacion
    Then deberia ver el mensaje de la posicion final "El carro termino mirando hacia el: "

    Scenario:
    Given visito la pagina del resultadoSimulacion
    Then deberia ver el mensaje de la posicion final "La simulacion termino con los siguientes datos: "
    