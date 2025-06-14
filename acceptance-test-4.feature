Feature: Visualización de notificaciones de mantenimiento preventivo

  Como usuario administrador, quiero recibir notificaciones sobre mantenimiento preventivo,
  para anticipar acciones y asegurar el funcionamiento continuo del sistema.

  Scenario: Visualización de notificaciones de mantenimiento
    Given que el usuario accede al sistema con sesión iniciada
    When hay una nueva notificación de mantenimiento
    Then esta debe aparecer en la interfaz de notificaciones

  Scenario: Visualización de la ausencia de notificaciones
    Given que el usuario accede al sistema
    When no hay notificaciones activas
    Then se muestra el mensaje “Sin notificaciones pendientes”

  Scenario: Fallo en la carga de notificaciones
    Given que el usuario accede a la interfaz
    When ocurre un error en la carga del backend
    Then el usuario ve un mensaje de error en pantalla