<?php

class LoginController extends Controller {
  public function index() {
    // Solo se podra acceder a esta funcionalidad si todavia no esta logueado
    if (self::isLogged()) {
      Twig::render('Login/LoginExists.twig');
    }

    Twig::render('Login/Index.twig');
  }

  public function login() {
    // Solo se podra acceder a esta funcionalidad si todavia no esta logueado
    if (self::isLogged()) {
      Twig::render('Login/LoginExists.twig');
    }

    // Si no recibo user o pass no puedo resolver la consulta, renderizo la pagina de error.
    if (!validatePost(['user', 'pass'])) {
      Twig::render('Login/InvalidParameters.twig');
    }

    // Recupero los parametros
    $user = trim($_POST['user']);
    $pass = trim($_POST['pass']);

    // Busco el usuario que coincida con la contraseña
    require_once 'Model/User.php';
    $user = User::login($user, $pass);

    // Si no se encotnro ninguno, error de login
    if (!$user) {
      Twig::render('Login/InvalidLogin.twig');
    }

    // Seteo el id del usuario logueado en la variable superglobal SESSION y redirecciono al home
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
