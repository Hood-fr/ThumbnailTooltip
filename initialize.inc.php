<?php
/*
Plugin Name: Thumbnail Tooltip
Version: 1.2
Description: Permet de changer l'infobulle sur les images dans les albums.
Plugin URI: http://fr.piwigo.org/ext/extension_view.php?eid=736
Author: Sarybe
Author URI: http://www.lesrempartsdetours.com
*/


if (!defined('PHPWG_ROOT_PATH')) {
  die('Hacking attempt!');
}

add_event_handler('init', 'Thumbnail_Tooltip');

function Thumbnail_Tooltip() {
  $plugin_name = 'Thumbnail Tooltip';
  $plugin_path = dirname(__FILE__).'/';
  $plugin_url = get_root_url();

  include_once($plugin_path.'include/class.inc.php');

  // Create object
  $Thumbnail_Tooltip = new Thumbnail_Tooltip_IMG($plugin_name, $plugin_path, $plugin_url);
  set_plugin_data($Thumbnail_Tooltip -> plugin_name, $Thumbnail_Tooltip);
}
?>