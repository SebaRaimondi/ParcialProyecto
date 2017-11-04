<?php

class Controller {

  private static $instance;

  public static function getInstance() {
    if (!isset(self::$instance)) {
      $callerClass = get_called_class();
      self::$instance = new self;
    }
    return self::$instance;
  }
}
