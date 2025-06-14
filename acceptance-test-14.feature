Feature: Validación de condiciones del contenedor
Como supervisor de seguridad,
quiero verificar con sensores si el contenedor cumple condiciones mínimas,
para aprobar o rechazar una solicitud de transporte.

Scenario: Visualización de la condición de temperatura excedida
  Given que el sensor detecta temperatura superior a la permitida
  When se intenta aprobar la solicitud
  Then se bloquea el proceso y se muestra una alerta

Scenario: Visualización del contenedor en condiciones óptimas
  Given que todas las condiciones están dentro del rango permitido
  When se valida la solicitud
  Then se marca como “aprobada automáticamente”