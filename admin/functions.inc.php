<?php
add_event_handler('get_admin_plugin_menu_links', 'thumbnail_tooltip_admin_menu');
function thumbnail_tooltip_admin_menu($menu)
{
  array_push($menu, array(
    'NAME' => 'Thumbnail Tooltip',
    'URL' => get_admin_plugin_menu_link(dirname(__FILE__).'/admin.php')));
  return $menu;
}
?>