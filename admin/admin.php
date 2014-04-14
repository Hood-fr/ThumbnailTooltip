<?php echo '';if (!defined('PHPWG_ROOT_PATH')) die('Hacking attempt!');
global $template, $conf;
load_language('plugin.lang', thumbnail_tooltip_PATH);include(dirname(__FILE__).'/config_default.inc.php');$params = array_merge($config_default, unserialize($conf['thumbnail_tooltip']));
if (isset($_POST['submit'])) {
  $params  = array(
    'display_name'      => $_POST['display_name'] ? true : false,
    'value1'          	=> $_POST['value1'],    'value2'          	=> $_POST['value2'],    'value3'          	=> $_POST['value3'],    'value4'         	=> $_POST['value4'],    'value5'         	=> $_POST['value5'],    'value6'         	=> $_POST['value6'],    'separator'         => $_POST['separator'],    'display_author_cat' => $_POST['display_author_cat']
  );
  $query = '
  UPDATE ' . CONFIG_TABLE . '
  SET value="' . addslashes(serialize($params)) . '"
  WHERE param="thumbnail_tooltip"
  LIMIT 1';
  pwg_query($query);
  array_push($page['infos'], l10n('tn_configuration_saved'));
}

if (isset($_POST['restore'])) {
  $params  = $config_default;
  $query = '
  UPDATE ' . CONFIG_TABLE . '
  SET value="' . addslashes(serialize($params)) . '"
  WHERE param="thumbnail_tooltip"
  LIMIT 1';
  pwg_query($query);
  array_push($page['infos'], l10n('tn_default_parameters_saved'));
}
$template->assign(array(
  'DISPLAY_NAME'         => $params['display_name'],
  'VALUE1'           	 => $params['value1'],  'VALUE2'           	 => $params['value2'],  'VALUE3'          	 => $params['value3'],  'VALUE4'           	 => $params['value4'],  'VALUE5'           	 => $params['value5'],  'VALUE6'           	 => $params['value6'],
  'SEPARATOR'         	 => $params['separator'],  'DISPLAY_AUTHOR_CAT'   => $params['display_author_cat']));
$template->set_filenames(array('plugin_admin_content' => dirname(__FILE__) . '/admin.tpl'));
$template->assign_var_from_handle('ADMIN_CONTENT', 'plugin_admin_content');?>