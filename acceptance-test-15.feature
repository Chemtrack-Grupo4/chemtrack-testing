Feature: Registro de solicitud de transporte
Como cliente,
quiero registrar una solicitud desde mi celular,
para contratar un transporte especializado de forma rápida.

Scenario: Registro exitoso de solicitud
  Given que el usuario llena todos los campos correctamente
  When presiona el botón enviar
  Then se registra la solicitud y se muestra un mensaje de confirmación

Scenario: Error de validación
  Given que el usuario omite un campo obligatorio
  When intenta enviar la solicitud
  Then se muestra un mensaje indicando los errores