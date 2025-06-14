Feature: Visualización de rutas seguras en mapa

  Como usuario planificador de rutas,
  quiero ver rutas seguras en un mapa interactivo,
  para evitar zonas de riesgo al momento de programar traslados.

  Scenario: Visualización correcta del mapa y rutas
    Given que el usuario accede a la sección de rutas
    When hay rutas disponibles
    Then el mapa interactivo se muestra con marcadores y alertas
  
  Scenario: Visualización del filtro de rutas por tipo de transporte
    Given que el usuario selecciona un tipo de transporte
    When aplica el filtro
    Then solo se muestran las rutas asociadas a ese tipo
  
  Scenario: Visualización del fallo en carga del mapa
    Given que el usuario accede al módulo de rutas
    When no se puede cargar el mapa
    Then se muestra un mensaje de error al usuario