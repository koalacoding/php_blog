<?php
require($_SERVER['DOCUMENT_ROOT'] . '/yoBlog/include/session.php');

if (isset($_SESSION['username'])) { // If the user is connected.
  require_once($_SERVER['DOCUMENT_ROOT'] . '/yoBlog/User/User.php');

  $user = new User;
  $user->logout();
  echo 'disconnected';
}
