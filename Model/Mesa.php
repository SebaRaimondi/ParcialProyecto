<?php

class Mesa {
  public $codigo, $circuito_codigo;

  public static all() {
    $cnn = Connection::getInstance();

    $sql = $cnn->prepare("SELECT * FROM mesa");
    $sql->execute();
    return $sql->fetchAll(PDO::FETCH_CLASS, 'Mesa');
  }
}
