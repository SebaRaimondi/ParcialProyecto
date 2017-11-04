<<?php

/**
 *
 */
class Connection {

  private static $cnn;

  public static function getInstance() {
    if (!isset(self::$cnn)) {
      $host = ;
      $dbname = ;
      $usuario = ;
      $contraseña = ;
      self::$cnn = new PDO("mysql:host=$host;dbname=$dbname", $usuario, $contraseña);
    }
    return self::$cnn;
  }
}
