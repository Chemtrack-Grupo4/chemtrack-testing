Feature: Tiempo de conducción excedido
Como conductor,
quiero recibir alertas si excedo el tiempo de conducción permitido,
para respetar las normativas de descanso y seguridad.

Scenario: Visualización de la alerta por tiempo excedido
  Given que el conductor supera las 4 horas de manejo continuo
  When no ha registrado pausas
  Then se muestra una alerta indicando que debe tomar un descanso

Scenario: Visualización del tiempo dentro de los límites
  Given que el conductor ha manejado menos de 4 horas
  When accede al dashboard
  Then no se muestra ninguna alerta