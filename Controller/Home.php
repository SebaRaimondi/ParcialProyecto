<?php

class HomeController extends Controller {
  public function index() {
    Twig::render('Home/Index.twig')
  }
}
