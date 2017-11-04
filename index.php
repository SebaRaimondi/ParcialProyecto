<?php

// Recupero los datos de la session
session_start();

// Incluyo el autoload de twig
require_once "vendor/autoload.php";
// Incluyo la clase con la que manejo la conexion a MySQL
require_once "Connection.php";
// Incluyo la clase abstracta Controller de la cual se colgaran todos los controllers
require_once "Controller/Controller.php";
// Incluyo el controlador que manejara Twig
require_once "Controller/Twig.php";

// Dos funciones que uso en varios archivos, no me acuerdo como usar una variable como nombre de otra, sino haria una sola.
function validatePost($args) {
  foreach ($args as $key) {
    if (!isset($_POST[$key]) || trim($_POST[$key]) == "" ) {
      return false;
    }
  }
  return true;
}
function validateGet($args) {
  foreach ($args as $key) {
    if (!isset($_GET[$key]) || trim($_GET[$key]) == "" ) {
      return false;
    }
  }
  return true;
}

// Controlador y accion por defecto. Se usaran si no encuentro controller o accion en el request
$controller = "Home";
$action = "index";

// Si se encuentran controller y accion en el request, las uso
if (validateGet(['controller', 'action'])) {
  $controller = ucwords($_GET['controller']);
  $action = strtolower($_GET['action']);
}

// Incluyo el controlador pedido
require_once "Controller/$controller.php";
// Todos los controladores se llaman "Nombre del controlador" + Controller (HomeController, por ejemplo), armo el nombre del requerido
$controller = $controller.'Controller';
// Busco la instancia del controller seleccionado (Todos los controllers son singletons)
$controller = call_user_func([$controller, 'getInstance']);
// Le pido la accion requerida
call_user_func([$controller, $action]);
