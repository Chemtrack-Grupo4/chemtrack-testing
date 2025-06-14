Feature: Acceso al Historial de Transportes
Como usuario,
quiero consultar el historial de transportes e incidentes registrados,
para analizar el desempeño y seguridad del servicio.

Scenario: Visualización del historial en la web
    Given que el usuario accede a la sección de historial en la plataforma web
    When hay registros disponibles
    Then se muestra una lista con detalles de viajes anteriores y posibles incidentes
    And permite aplicar filtros por fecha y vehículo

Scenario: Acceso al historial desde la app móvil
    Given que el transportista inicia sesión desde su dispositivo móvil
    When accede a la sección de historial
    Then puede ver su historial personal de viajes realizados
    And consultar detalles como fecha, origen, destino e incidentes

Scenario: Sincronización de logs desde IoT
    Given que el sensor del vehículo detecta un evento relevante
    When el viaje concluye
    Then el dispositivo sincroniza el log de viaje con el backend
    And este queda visible desde el historial web y móvil