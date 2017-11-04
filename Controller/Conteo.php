<?php

class ConteoController extends Controller {
  public function index() {
    require_once 'Controller/Login.php';
    if (!LoginController::isLogged()) {
      Twig::render('Conteo/LoginDoesntExists.twig');
    }

    require_once 'Model/Circuito.php';
    require_once 'Model/Mesa.php';
    require_once 'Model/Seccion.php';
    Twig::render('Conteo/Index.twig', [
      'circuitos' => Circuito::all(),
      'mesas' => Mesa::all(),
      'secciones' => Seccion::all()
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
    $agr = Agrupacion::mesa($seccion, $circuito, $mesa);

    if (!$agr) {
      Twig::render('Conteo/NoRelation.twig', [
        'circuito' => $circuito,
        'mesa' => $mesa,
        'seccion' => $seccion
      ]);
    }

    Twig::render('Conteo/Conteo.twig', [
      'agrupaciones' = $agr
    ]);
  }

}
