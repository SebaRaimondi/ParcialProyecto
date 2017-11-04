<?php

class Connection {

  private static $cnn;

  public static function getInstance() {
    if (!isset(self::$cnn)) {
      $host = 'localhost';
      $dbname = 'oSjgbXzt';
      $usuario = 'oSjgbXzt';
      $contraseña = 'oQrU9XVD';
      self::$cnn = new PDO("mysql:host=$host;dbname=$dbname", $usuario, $contraseña);
    }
    return self::$cnn;
  }
}
