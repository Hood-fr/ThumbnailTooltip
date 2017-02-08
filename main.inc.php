<?php
/*
Plugin Name: Thumbnail Tooltip
Version: 1.5.2
Description: Permet de changer l'infobulle sur les images dans les albums.
Plugin URI: http://piwigo.org/ext/extension_view.php?eid=738
Author: Sarybe
Author URI: 
*/


// Inspiré des plugins CatAddFav by jfc (http://fr.piwigo.org/ext/extension_view.php?eid=489) et Lightbox by P@t (http://piwigo.org/ext/extension_view.php?eid=280)

if (!defined('PHPWG_ROOT_PATH')) {
  die('Hacking attempt!');
}


define('thumbnail_tooltip_PATH' , PHPWG_PLUGINS_PATH.basename(dirname(__FILE__)).'/');


if (script_basename()  == 'admin') {
  include(dirname(__FILE__).'/admin/functions.inc.php');
}


else {
  include_once(dirname(__FILE__).'/initialize.inc.php');
}
?>