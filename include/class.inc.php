<?php

class Thumbnail_Tooltip_IMG {
  var $plugin_name, $plugin_path, $plugin_url;
  var $my_config;

  function Thumbnail_Tooltip_IMG ($plugin_name, $plugin_path, $plugin_url) {
    $this->plugin_name = $plugin_name;
    $this->plugin_path = $plugin_path;
    $this->plugin_url = $plugin_url;
    $this->initialize_event_handler($plugin_name, $plugin_path, $plugin_url);
  }

  function initialize_event_handler() {
    add_event_handler('loc_end_index_thumbnails', array($this, 'thumbnail_tooltip_affich'), 50, 2);
    add_event_handler('loc_end_index_category_thumbnails', array($this, 'Author_Description_affich'), 50, 2);
  }

  function thumbnail_tooltip_affich($tpl_var) {
    global $user;
      
	  $query = '
		SELECT param, value, comment
		FROM ' . CONFIG_TABLE . '
		WHERE param="thumbnail_tooltip"
		;';
	  $row = pwg_db_fetch_assoc( pwg_query($query) );
  
      $params = unserialize($row['value']);

      $values = array(
		  'DISPLAY_NAME'         => $params['display_name'],
		  'value1'           	 => $params['value1'],
		  'value2'           	 => $params['value2'],
		  'value3'          	 => $params['value3'],
		  'value4'           	 => $params['value4'],
		  'value5'           	 => $params['value5'],
		  'value6'           	 => $params['value6'],
		  'separator'         	 => $params['separator']
      );
	  
    foreach($tpl_var as $cle=>$valeur) {
      $query = "
		SELECT name AS value1, hit AS value2, hit AS value3, comment AS value4, author AS value5, CONCAT('".l10n('Author').' : '."', author,'') AS value6, rating_score AS value7
		FROM ".IMAGES_TABLE."
		WHERE id = ".(int)$tpl_var[$cle]['id']."
		;";
	  $row = pwg_db_fetch_assoc( pwg_query($query) );

      $details = array();
      $details_param = array();
	  
      $details['tn_type1'] = $row['value1'];

      if (!empty($row['value2']))
      {
		$details['tn_type2'] = $row['value2'].' '.strtolower(l10n('Visits'));
      }
	  if (!empty($row['value3']))
      {
		$details['tn_type3'] = '('.$row['value3'].' '.strtolower(l10n('Visits')).')';
	    if (!empty($row['value7'])) { $type8 = ', '.strtolower(l10n('Rating score')).' '.$row['value7']; } else { $type8 = ''; }
		$details['tn_type8'] = '('.$row['value3'].' '.strtolower(l10n('Visits')).$type8.')';
	  }
      if (!empty($row['value4']))
      {
		$details['tn_type4'] = $row['value4'];
      }
      if (!empty($row['value5']))
      {
		$details['tn_type5'] = $row['value5'];
      }
      if (!empty($row['value6']))
      {
		$details['tn_type6'] = $row['value6'];
      }
      if (!empty($row['value7']))
      {
		$details['tn_type7'] = strtolower(l10n('Rating score')).' '.$row['value7'];
      }
	  	  
	  if ((!empty($details[$values['value1']])) && ($details[$values['value1']]!='none')) { $details_param[] = $details[$values['value1']]; }
	  if ((!empty($details[$values['value2']])) && ($details[$values['value2']]!='none')) { $details_param[] = $details[$values['value2']]; }
	  if ((!empty($details[$values['value3']])) && ($details[$values['value3']]!='none')) { $details_param[] = $details[$values['value3']]; }
	  if ((!empty($details[$values['value4']])) && ($details[$values['value4']]!='none')) { $details_param[] = $details[$values['value4']]; }
	  if ((!empty($details[$values['value5']])) && ($details[$values['value5']]!='none')) { $details_param[] = $details[$values['value5']]; }
	  if ((!empty($details[$values['value6']])) && ($details[$values['value6']]!='none')) { $details_param[] = $details[$values['value6']]; }
	  
	  if ($params['separator']=='1') { $title = implode(' - ', $details_param); } else { $title = implode(' ', $details_param); }
	  
	  if ($params['display_name']==true) { $tpl_var[$cle]['TN_TITLE'] = $title; } else { $tpl_var[$cle]['TN_TITLE']=''; }
    }
    return $tpl_var;
  }
  
  
  function Author_Description_affich($tpl_var) {
    global $user;

	$query = 'SELECT param, value, comment FROM ' . CONFIG_TABLE . ' WHERE param="thumbnail_tooltip";';
	$row = pwg_db_fetch_assoc( pwg_query($query) );
  
    $params = unserialize($row['value']);
	$values = array('DISPLAY_AUTHOR_CAT' => $params['display_author_cat']);
	
	if ($params['display_author_cat']==true) {
      foreach($tpl_var as $cle=>$valeur) {
        $query = "SELECT author FROM ".IMAGE_CATEGORY_TABLE." INNER JOIN ".IMAGES_TABLE." ON image_id = id WHERE category_id = ".(int)$tpl_var[$cle]['id']." LIMIT 1";
	    $result = pwg_query($query);
	    $row = pwg_db_fetch_assoc($result);
	    $auteur = '';
	    if (!empty($row['author'])) {
	      if (preg_match('#(,|\/)#i', $row['author'])) { $s = 's'; } else { $s = ''; }
	      if (!empty($tpl_var[$cle]['DESCRIPTION'])) { $tpl_var[$cle]['DESCRIPTION'] = $tpl_var[$cle]['DESCRIPTION'].'<br/>Auteur'.$s.' : '.$row['author']; } else { $tpl_var[$cle]['DESCRIPTION'] = 'Auteur'.$s.' : '.$row['author']; }
	    }
      }
    }
    return $tpl_var;
  }
}
?>