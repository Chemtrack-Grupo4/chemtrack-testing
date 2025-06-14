Feature: Publicación de Solicitudes de Transporte de Productos Peligrosos 

Como empresa que necesita transportar productos peligrosos,
quiero registrar solicitudes fácilmente,
para que los transportistas autorizados las visualicen y acepten.

Scenario: Formulario completo y envío exitoso
    Given que el usuario ha accedido al formulario de solicitud en la web
    When llena todos los campos requeridos y presiona "Publicar"
    Then el sistema valida los datos
    And registra la solicitud en la base de datos mediante la API
    And muestra un mensaje de confirmación

Scenario: Validación fallida del formulario
    Given que el usuario accede al formulario web
    When deja campos obligatorios vacíos
    Then el sistema marca los campos inválidos
    And no permite enviar la solicitud