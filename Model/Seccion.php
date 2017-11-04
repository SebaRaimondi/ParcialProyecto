<?php

class Seccion {
  public $codigo, $nombre, $provincia_id;

  public static function all() {
    $cnn = Connection::getInstance();

    $sql = $cnn->prepare("SELECT * FROM seccion");
    $sql->execute();
    return $sql->fetchAll(PDO::FETCH_CLASS, 'Seccion');
  }
}
