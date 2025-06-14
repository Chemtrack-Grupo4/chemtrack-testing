Feature: Detección de desvíos de ruta con sensor GPS 

  Como administrador,
  quiero que los sensores GPS detecten desvíos no autorizados,
  para generar alertas en tiempo real.

  Scenario: Visualización de la alerta por desvío
    Given que el vehículo está en ruta
    When se detecta un desvío respecto a la ruta establecida
    Then el sistema genera una alerta en el panel de monitoreo
  
  Scenario: Visualización de sin señal GPS
    Given que el sensor pierde conexión
    When no puede registrar la ubicación
    Then se almacena un log de pérdida de señal y se muestra advertencia