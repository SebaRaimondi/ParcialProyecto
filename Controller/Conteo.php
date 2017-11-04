<?php

class ConteoController extends Controller {
  public function index() {
    require_once 'Controller/Login.php';
    if (!LoginController::isLogged()) {
      Twig::render('Conteo/LoginDoesntExists.twig');
    }

    Twig::render('Conteo/Index.twig', [
      'circuito' = Circuito::all();
      'mesa' = Mesa::all();
      'seccion' = Seccion::all();
    ]);

  }

  public function conteo() {
    require_once 'Controller/Login.php';
    if (!LoginController::isLogged()) {
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
