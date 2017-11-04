<?php

// Controlador de Twig, Singleton que devuelve el Twig_Enviroment como instancia.
class Twig {
  private static $instance;

  public static function getInstance() {
    if (!isset(self::$instance)) {
      $loader = new Twig_Loader_Filesystem('View');
      $twig = new Twig_Environment($loader);
      self::$instance = $twig;
    }

    return self::$instance;
  }

  // Para facilitar el uso de Twig, le envio a esta funcion el twig que quiera renderizar
  // Y un parametro opcional $context que se le enviara a Twig.
  public static function render($path, $context = []) {
    // ContextBase guarda parametros que se usaran para varias plantillas.
    require_once 'Controller/Login.php';
    $contextBase = [
      'isLogged' => LoginController::isLogged()
    ];
    $template = self::getInstance()->load($path);
    echo $template->render($contextBase + $context);
    die;
  }
}
