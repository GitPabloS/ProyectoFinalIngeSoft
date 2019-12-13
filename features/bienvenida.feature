Feature:
    Como Jugador
    Quiero recibir un saludo al entra a la pagina
    Para sentirme mas dentro del programa

    Scenario:
    Given visito la pagina de inicio
    Then deberia ver un mensaje " Simulador Carro "

    Scenario:
    Given visito la pagina de inicio
    And Ingreso el nombre "Augusto" en el campo "nombreLabel"
    When presiono el boton "Enviar"
    Then deberia ver "Sea Bienvenido Augusto"
