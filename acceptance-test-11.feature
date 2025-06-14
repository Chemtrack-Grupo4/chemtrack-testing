Feature: Sincronización de sensores al historial
Como backend del sistema,
quiero registrar automáticamente datos enviados por sensores,
para alimentar el historial de cada transporte.

Scenario: Visualización de la sincronización exitosa de logs
  Given que un sensor finaliza un viaje
  When envía los datos al backend
  Then estos se almacenan en la base de datos correctamente

Scenario: Visualización del error de comunicación con backend
  Given que hay una falla de red
  When el sensor intenta sincronizar
  Then se reintenta la sincronización o se almacena localmente