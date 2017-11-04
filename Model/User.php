<?php

class User {
  public $id, $usuario, $clave, $nombre, $apellido, $mail;

  public static function login($user, $pass) {
    $cnn = Connection::getInstance();

    $sql = $cnn->prepare("SELECT * FROM usuario WHERE usuario=:user AND clave=:pass");
    $sql->execute([
      'user' => $user,
      'pass' => $pass
    ]);
    $sql->setFetchMode(PDO::FETCH_CLASS, 'User');
    return $sql->fetch();
  }
}
