Feature: Visualización de historial del conductor 
Como conductor,
quiero ver mi historial de servicios desde la aplicación,
para conocer mi rendimiento y viajes realizados.

Scenario: Visualización correcta del historial
  Given que el conductor accede a su perfil
  When ingresa a la sección “Mi historial”
  Then se muestran todos los viajes realizados con fecha y detalles

Scenario: Visualización del historial vacío
  Given que el conductor no ha realizado viajes
  When accede al historial
  Then se muestra un mensaje indicando que no hay registros