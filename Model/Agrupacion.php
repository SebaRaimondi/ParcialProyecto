<?php

class Agrupacion {
  public $agrupacion_politica_id, $votos_senadores_nacionales,
  $votos_diputados_nacionales, $votos_senadores_provinciales, $votos_concejales,
  $provincia_id, $seccion_codigo, $circuito_codigo, $mesa_codigo, $nombre;

  public static function mesa($seccion, $circuito, $mesa, $prov = 2) {
    $cnn = Connection::getInstance();

    $sql = $cnn->prepare(
      "SELECT * FROM votos_agrupaciones
      INNER JOIN agrupacion_politica
      ON votos_agrupaciones.agrupacion_politica_id = agrupacion_politica.id
      WHERE provincia_id=:prov AND seccion_codigo=:seccion
        AND circuito_codigo=:circuito AND mesa_codigo=:mesa"
    );
    $sql->execute([
      'prov' => $prov,
      'seccion' => $seccion,
      'circuito' => $circuito,
      'mesa' => $mesa
    ]);
    return $sql->fetchAll(PDO::FETCH_CLASS, 'Agrupacion');
  }
}
