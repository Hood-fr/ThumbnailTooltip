<?php

if (!defined('PHPWG_ROOT_PATH')) die('Hacking attempt!');

function plugin_install()
{
  include(dirname(__FILE__).'/admin/config_default.inc.php');

  $query = '
INSERT INTO ' . CONFIG_TABLE . ' (param,value,comment)
VALUES ("thumbnail_tooltip" , "'.addslashes(serialize($config_default)).'" , "Thumbnail Tooltip plugin parameters");';
  pwg_query($query);

  $query = 'SHOW FULL COLUMNS FROM ' . HISTORY_TABLE . ';';
  $result = array_from_query($query, 'Field');
  if (!in_array('thumbnail_tooltip', $result))
  {
    pwg_query('ALTER TABLE '.HISTORY_TABLE.' ADD `thumbnail_tooltip` ENUM(\'true\', \'false\') NULL DEFAULT NULL');
  }
}

function plugin_uninstall()
{
  $query = 'DELETE FROM ' . CONFIG_TABLE . ' WHERE param="thumbnail_tooltip" LIMIT 1;';
  pwg_query($query);

  $query = 'SHOW FULL COLUMNS FROM ' . HISTORY_TABLE . ';';
  $result = array_from_query($query, 'Field');
  if (in_array('thumbnail_tooltip', $result))
  {
    $q = ' ALTER TABLE '.HISTORY_TABLE.' DROP `thumbnail_tooltip`';
    pwg_query( $q );
  }
}

?>