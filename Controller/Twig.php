<?php
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

  public static function render($path, $context = []) {
    require_once 'Controller/Login.php';
    $contextBase = [
      'isLogged' => LoginController::isLogged();
    ];
    $template = self::getInstance()->load($path);
    echo $template->render($contextBase + $context);
    die;
  }
}
