Feature: Generación de notificaciones backend
Como administrador del backend,
quiero que el sistema genere notificaciones según eventos específicos,
para mantener informado al usuario de situaciones importantes.

Scenario: Generación de notificación por mantenimiento
  Given que el backend detecta que se alcanzó el umbral de kilometraje
  When se verifica el estado del vehículo
  Then se crea una notificación en la base de datos

Scenario: Notificación no enviada por error
  Given que el backend intenta generar una notificación
  When hay un fallo en el servidor
  Then se registra un log del error y no se muestra en la app