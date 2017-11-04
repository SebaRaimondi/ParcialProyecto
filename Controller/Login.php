<?php

class LoginController extends Controller {
  public function index() {
    if (self::isLogged()) {
      Twig::render('Login/LoginExists.twig');
    }

    Twig::render('Login/Index.twig');
  }

  public function login() {
    if (!validatePost(['user', 'pass'])) {
      Twig::render('Login/InvalidParameters.twig');
    }

    $user = trim($_POST['user']);
    $pass = trim($_POST['pass']);

    require_once 'Model/User.php';
    $user = User::login($user, $pass);

    if (!$user) {
      Twig::render('Login/InvalidLogin.twig');
    }

    $_SESSION['id'] = $user->id;
    header('Location: index.php');
  }

  public function logout() {
    session_destroy();
    header('Location: index.php');
  }

  public static function isLogged() {
    if (isset($_SESSION['id']) && $_SESSION['id'] != "") {
      return $_SESSION['id'];
    }
    return false;
  }

}
