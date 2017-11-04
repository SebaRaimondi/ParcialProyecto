<?php

class Circuito {
  public $codigo, $seccion_codigo;

  public static function all() {
    $cnn = Connection::getInstance();

    $sql = $cnn->prepare("SELECT * FROM circuito");
    $sql->execute();
    return $sql->fetchAll(PDO::FETCH_CLASS, 'Circuito');
  }
}
