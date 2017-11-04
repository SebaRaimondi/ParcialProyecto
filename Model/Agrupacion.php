<?php

class Agrupacion {
  public $agrupacion_politica_id, $votos_senadores_nacionales,
  $votos_diputados_nacionales, $votos_senadores_provinciales, $votos_concejales,
  $provincia_id, $seccion_codigo, $circuito_codigo, $mesa_codigo, $nombre;

  public static mesa($provincia, $seccion, $circuito, $mesa) {
    $cnn = Connection::getInstance();

    $sql = $cnn->prepare(
      "SELECT * FROM votos_agrupaciones
      INNER JOIN agrupacion_politica
      ON votos_agrupaciones.agrupacion_politica_id = agrupacion_politica.id
      WHERE seccion=:seccion AND circuito=:circuito AND circuito=:circuito"
    );
    $sql->execute([
      'seccion' => $seccion,
      'circuito' => $circuito,
      'mesa' => $mesa
    ]);
    return $sql->fetchAll(PDO::FETCH_CLASS, 'Agrupacion');
  }
}
