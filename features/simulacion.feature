Feature:
    Como Jugador
    Quiero ingresar los datos de la simulacion
    Para tener una simulacion mas flexible

    Scenario:
    Given visito la pagina de datosSimulacion
    And lleno el campo "dimX" con el valor de "5"
    When presiono el boton de "Enviar"
    Then deberia ver el mensaje "Las dimensiones del terreno en X: 5"

    Scenario:
    Given visito la pagina de datosSimulacion
    And lleno el campo "dimY" con el valor de "5"
    When presiono el boton de "Enviar"
    Then deberia ver el mensaje de la pos "Las dimensiones del terreno en Y: 5"

    Scenario:
    Given visito la pagina de datosSimulacion
    And lleno el campo "posX" con el valor de "2"
    When presiono el boton de "Enviar"
    Then deberia ver el mensaje de la pos "Posicion inicial en X: 2"

    Scenario:
    Given visito la pagina de datosSimulacion
    And lleno el campo "posY" con el valor de "2"
    When presiono el boton de "Enviar"
    Then deberia ver el mensaje de la pos "Posicion inicial en Y: 2"
    
    Scenario:
    Given visito la pagina de datosSimulacion
    And lleno el campo "Orient" con el valor de "North"
    When presiono el boton de "Enviar"
    Then deberia ver el mensaje de la pos "El carro termino mirando hacia el: North"

    Scenario:
    Given visito la pagina de datosSimulacion
    And lleno el campo "pasos" con el valor de "I,D,F"
    When presiono el boton de "Enviar"
    Then deberia ver el mensaje de la pos "Con un camino a seguir de: I,D,F"
