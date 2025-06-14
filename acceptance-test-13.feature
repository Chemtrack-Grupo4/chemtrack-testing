Feature: Historial de incidentes
Como analista,
quiero revisar el historial de incidentes asociados a los transportes,
para tomar decisiones sobre rutas o transportistas.

Scenario: Visualización de historial con filtros
  Given que el analista accede al módulo de historial
  When selecciona un rango de fechas
  Then se muestran los incidentes ocurridos en ese periodo

Scenario: Historial sin datos
  Given que no se registraron incidentes
  When el usuario aplica el filtro
  Then se muestra el mensaje “No hay incidentes registrados”