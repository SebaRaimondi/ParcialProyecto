<?php

class ConteoController extends Controller {
  public function index() {
    if (!self::isLogged()) {
      Twig::render('Conteo/LoginDoesntExists.twig');
    }

    Twig::render('Conteo/Index.twig');

  }

  public function conteo() {
    if (!self::isLogged()) {
      Twig::render('Conteo/LoginDoesntExists.twig');
    }

    if (!validatePost(['seccion', 'circuito', 'mesa'])) {
      Twig::render('Conteo/InvalidParameters.twig');
    }

    $seccion = trim($_POST['seccion']);
    $circuito = trim($_POST['circuito']);
    $mesa = trim($_POST['mesa']);

    require_once 'Model/Agrupacion.php';
    $mesa = User::mesa($seccion, $circuito, $mesa);

    if (!$user) {
      Twig::render('Login/InvalidLogin.twig');
    }

    $_SESSION['id'] = $user->id;
    header('Location: index.php');

  }

}