<?php

class ConteoController extends Controller {
  public function index() {
    // Si no esta logueado no puede acceder a esta funcionalidad.
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
    // Si no esta logueado no puede acceder a esta funcionalidad
    require_once 'Controller/Login.php';
    if (!LoginController::isLogged()) {
      Twig::render('Conteo/LoginDoesntExists.twig');
    }

    // Si no recibo los siguientes campos no puedo resolver la consulta sql, por lo tanto tiro error antes
    if (!validatePost(['seccion', 'circuito', 'mesa'])) {
      Twig::render('Conteo/InvalidParameters.twig');
    }

    // Recupero los campos del formulario
    $seccion = trim($_POST['seccion']);
    $circuito = trim($_POST['circuito']);
    $mesa = trim($_POST['mesa']);

    // Busco la informacion solicitada
    require_once 'Model/Agrupacion.php';
    $agr = Agrupacion::mesa($seccion, $circuito, $mesa);

    // Si no se encontro la relacion solicitada, renderizo la pagina de error de relacion.
    if (!$agr) {
      Twig::render('Conteo/NoRelation.twig', [
        'circuito' => $circuito,
        'mesa' => $mesa,
        'seccion' => $seccion
      ]);
    }

    // Si todo lo anterior funciono, renderizo la pagina con la informacion del conteo.
    Twig::render('Conteo/Conteo.twig', [
      'agrupaciones' => $agr
    ]);
  }

}
