<?php

require_once "Connection.php";
require_once "Controller/Controller.php"

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

$controller = "Home";
$action = "index";

if (validateGet(['controller', 'action'])) {
  $controller = ucwords($_GET['controller']);
  $action = strtolower($_GET['action']);
}

require_once "Controller/$controller.php";
$controller = $controller.Controller;
$controller = call_user_func([$controller, 'getInstance']);
$controller->$action;
