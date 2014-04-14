<div class="titrePage">
<h2>Thumbnail Tooltip</h2>
</div>

<form action="" method="post">

<fieldset>
<legend>{'tn_display_img'|@translate}</legend>
<table>
  <tr>
    <td align="right" nowrap="nowrap">{'tn_display_name_img'|@translate} : &nbsp;&nbsp;</td>
    <td><input type="radio" name="display_name" value="1" {if $DISPLAY_NAME}checked="checked"{/if} onClick="javascript: jQuery('.name_link').show();"> {'tn_yes'|@translate} &nbsp;
        <input type="radio" name="display_name" value="0" {if !$DISPLAY_NAME}checked="checked"{/if} onClick="javascript: jQuery('.name_link').hide();"> {'tn_no'|@translate}
    </td>
  </tr>
  
  <tr><td>&nbsp;</td></tr>

  <tr class="name_link">
    <td align="right" nowrap="nowrap">{'tn_name_link'|@translate} : &nbsp;&nbsp;</td>
    <td><select name="value1" style="widht:30px">
          <option label="{'tn_type1'|@translate}" value="tn_type1" {if $VALUE1 == 'tn_type1'}selected="selected"{/if}>{'tn_type1'|@translate}</option>
          <option label="{'tn_type2'|@translate}" value="tn_type2" {if $VALUE1 == 'tn_type2'}selected="selected"{/if}>{'tn_type2'|@translate}</option>
          <option label="{'tn_type3'|@translate}" value="tn_type3" {if $VALUE1 == 'tn_type3'}selected="selected"{/if}>{'tn_type3'|@translate}</option>
          <option label="{'tn_type4'|@translate}" value="tn_type4" {if $VALUE1 == 'tn_type4'}selected="selected"{/if}>{'tn_type4'|@translate}</option>
          <option label="{'tn_type5'|@translate}" value="tn_type5" {if $VALUE1 == 'tn_type5'}selected="selected"{/if}>{'tn_type5'|@translate}</option>
          <option label="{'tn_type6'|@translate}" value="tn_type6" {if $VALUE1 == 'tn_type6'}selected="selected"{/if}>{'tn_type6'|@translate}</option>
          <option label="{'tn_type7'|@translate}" value="tn_type7" {if $VALUE1 == 'tn_type7'}selected="selected"{/if}>{'tn_type7'|@translate}</option>
          <option label="{'tn_type8'|@translate}" value="tn_type8" {if $VALUE1 == 'tn_type8'}selected="selected"{/if}>{'tn_type8'|@translate}</option>
        </select>
		<select name="value2" style="widht:30px">
          <option label="{'tn_none'|@translate}" value="none" {if $VALUE2 == 'tn_none'}selected="selected"{/if}>{'tn_none'|@translate}</option>
          <option label="{'tn_type1'|@translate}" value="tn_type1" {if $VALUE2 == 'tn_type1'}selected="selected"{/if}>{'tn_type1'|@translate}</option>
          <option label="{'tn_type2'|@translate}" value="tn_type2" {if $VALUE2 == 'tn_type2'}selected="selected"{/if}>{'tn_type2'|@translate}</option>
          <option label="{'tn_type3'|@translate}" value="tn_type3" {if $VALUE2 == 'tn_type3'}selected="selected"{/if}>{'tn_type3'|@translate}</option>
          <option label="{'tn_type4'|@translate}" value="tn_type4" {if $VALUE2 == 'tn_type4'}selected="selected"{/if}>{'tn_type4'|@translate}</option>
          <option label="{'tn_type5'|@translate}" value="tn_type5" {if $VALUE2 == 'tn_type5'}selected="selected"{/if}>{'tn_type5'|@translate}</option>
          <option label="{'tn_type6'|@translate}" value="tn_type6" {if $VALUE2 == 'tn_type6'}selected="selected"{/if}>{'tn_type6'|@translate}</option>
          <option label="{'tn_type7'|@translate}" value="tn_type7" {if $VALUE2 == 'tn_type7'}selected="selected"{/if}>{'tn_type7'|@translate}</option>
          <option label="{'tn_type8'|@translate}" value="tn_type8" {if $VALUE2 == 'tn_type8'}selected="selected"{/if}>{'tn_type8'|@translate}</option>
        </select>
		<select name="value3" style="widht:30px">
          <option label="{'tn_none'|@translate}" value="none" {if $VALUE3 == 'tn_none'}selected="selected"{/if}>{'tn_none'|@translate}</option>
          <option label="{'tn_type1'|@translate}" value="tn_type1" {if $VALUE3 == 'tn_type1'}selected="selected"{/if}>{'tn_type1'|@translate}</option>
          <option label="{'tn_type2'|@translate}" value="tn_type2" {if $VALUE3 == 'tn_type2'}selected="selected"{/if}>{'tn_type2'|@translate}</option>
          <option label="{'tn_type3'|@translate}" value="tn_type3" {if $VALUE3 == 'tn_type3'}selected="selected"{/if}>{'tn_type3'|@translate}</option>
          <option label="{'tn_type4'|@translate}" value="tn_type4" {if $VALUE3 == 'tn_type4'}selected="selected"{/if}>{'tn_type4'|@translate}</option>
          <option label="{'tn_type5'|@translate}" value="tn_type5" {if $VALUE3 == 'tn_type5'}selected="selected"{/if}>{'tn_type5'|@translate}</option>
          <option label="{'tn_type6'|@translate}" value="tn_type6" {if $VALUE3 == 'tn_type6'}selected="selected"{/if}>{'tn_type6'|@translate}</option>
          <option label="{'tn_type7'|@translate}" value="tn_type7" {if $VALUE3 == 'tn_type7'}selected="selected"{/if}>{'tn_type7'|@translate}</option>
          <option label="{'tn_type8'|@translate}" value="tn_type8" {if $VALUE3 == 'tn_type8'}selected="selected"{/if}>{'tn_type8'|@translate}</option>
        </select>
		<select name="value4" style="widht:30px">
          <option label="{'tn_none'|@translate}" value="none" {if $VALUE4 == 'tn_none'}selected="selected"{/if}>{'tn_none'|@translate}</option>
          <option label="{'tn_type1'|@translate}" value="tn_type1" {if $VALUE4 == 'tn_type1'}selected="selected"{/if}>{'tn_type1'|@translate}</option>
          <option label="{'tn_type2'|@translate}" value="tn_type2" {if $VALUE4 == 'tn_type2'}selected="selected"{/if}>{'tn_type2'|@translate}</option>
          <option label="{'tn_type3'|@translate}" value="tn_type3" {if $VALUE4 == 'tn_type3'}selected="selected"{/if}>{'tn_type3'|@translate}</option>
          <option label="{'tn_type4'|@translate}" value="tn_type4" {if $VALUE4 == 'tn_type4'}selected="selected"{/if}>{'tn_type4'|@translate}</option>
          <option label="{'tn_type5'|@translate}" value="tn_type5" {if $VALUE4 == 'tn_type5'}selected="selected"{/if}>{'tn_type5'|@translate}</option>
          <option label="{'tn_type6'|@translate}" value="tn_type6" {if $VALUE4 == 'tn_type6'}selected="selected"{/if}>{'tn_type6'|@translate}</option>
          <option label="{'tn_type7'|@translate}" value="tn_type7" {if $VALUE4 == 'tn_type7'}selected="selected"{/if}>{'tn_type7'|@translate}</option>
          <option label="{'tn_type8'|@translate}" value="tn_type8" {if $VALUE4 == 'tn_type8'}selected="selected"{/if}>{'tn_type8'|@translate}</option>
        </select>
		<select name="value5" style="widht:30px">
          <option label="{'tn_none'|@translate}" value="none" {if $VALUE5 == 'tn_none'}selected="selected"{/if}>{'tn_none'|@translate}</option>
          <option label="{'tn_type1'|@translate}" value="tn_type1" {if $VALUE5 == 'tn_type1'}selected="selected"{/if}>{'tn_type1'|@translate}</option>
          <option label="{'tn_type2'|@translate}" value="tn_type2" {if $VALUE5 == 'tn_type2'}selected="selected"{/if}>{'tn_type2'|@translate}</option>
          <option label="{'tn_type3'|@translate}" value="tn_type3" {if $VALUE5 == 'tn_type3'}selected="selected"{/if}>{'tn_type3'|@translate}</option>
          <option label="{'tn_type4'|@translate}" value="tn_type4" {if $VALUE5 == 'tn_type4'}selected="selected"{/if}>{'tn_type4'|@translate}</option>
          <option label="{'tn_type5'|@translate}" value="tn_type5" {if $VALUE5 == 'tn_type5'}selected="selected"{/if}>{'tn_type5'|@translate}</option>
          <option label="{'tn_type6'|@translate}" value="tn_type6" {if $VALUE5 == 'tn_type6'}selected="selected"{/if}>{'tn_type6'|@translate}</option>
          <option label="{'tn_type7'|@translate}" value="tn_type7" {if $VALUE5 == 'tn_type7'}selected="selected"{/if}>{'tn_type7'|@translate}</option>
          <option label="{'tn_type8'|@translate}" value="tn_type8" {if $VALUE5 == 'tn_type8'}selected="selected"{/if}>{'tn_type8'|@translate}</option>
        </select>
		<select name="value6" style="widht:30px">
          <option label="{'tn_none'|@translate}" value="none" {if $VALUE6 == 'tn_none'}selected="selected"{/if}>{'tn_none'|@translate}</option>
          <option label="{'tn_type1'|@translate}" value="tn_type1" {if $VALUE6 == 'tn_type1'}selected="selected"{/if}>{'tn_type1'|@translate}</option>
          <option label="{'tn_type2'|@translate}" value="tn_type2" {if $VALUE6 == 'tn_type2'}selected="selected"{/if}>{'tn_type2'|@translate}</option>
          <option label="{'tn_type3'|@translate}" value="tn_type3" {if $VALUE6 == 'tn_type3'}selected="selected"{/if}>{'tn_type3'|@translate}</option>
          <option label="{'tn_type4'|@translate}" value="tn_type4" {if $VALUE6 == 'tn_type4'}selected="selected"{/if}>{'tn_type4'|@translate}</option>
          <option label="{'tn_type5'|@translate}" value="tn_type5" {if $VALUE6 == 'tn_type5'}selected="selected"{/if}>{'tn_type5'|@translate}</option>
          <option label="{'tn_type6'|@translate}" value="tn_type6" {if $VALUE6 == 'tn_type6'}selected="selected"{/if}>{'tn_type6'|@translate}</option>
          <option label="{'tn_type7'|@translate}" value="tn_type7" {if $VALUE6 == 'tn_type7'}selected="selected"{/if}>{'tn_type7'|@translate}</option>
          <option label="{'tn_type8'|@translate}" value="tn_type8" {if $VALUE6 == 'tn_type8'}selected="selected"{/if}>{'tn_type8'|@translate}</option>
        </select>
    </td>
  <tr><td>&nbsp;</td></tr>
  <tr class="name_link">
     <td align="right" nowrap="nowrap">{'tn_separator'|@translate} : &nbsp;&nbsp;</td>
    <td><input type="radio" name="separator" {if $SEPARATOR}checked="checked"{/if} value="1"> {'tn_yes'|@translate} &nbsp;
        <input type="radio" name="separator" {if !$SEPARATOR}checked="checked"{/if} value="0"> {'tn_no'|@translate}
    </td>
  </tr>
  
  <tr><td>&nbsp;</td></tr>
</table>
</fieldset> 


<fieldset>
<legend>{'tn_display_cat'|@translate}</legend>
<table>
  <tr>
    <td align="right" nowrap="nowrap">{'tn_display_name_cat'|@translate} : &nbsp;&nbsp;</td>
    <td><input type="radio" name="display_author_cat" value="1" {if $DISPLAY_AUTHOR_CAT}checked="checked"{/if}> {'tn_yes'|@translate} &nbsp;
        <input type="radio" name="display_author_cat" value="0" {if !$DISPLAY_AUTHOR_CAT}checked="checked"{/if}> {'tn_no'|@translate}
    </td>
  </tr>
   
  <tr><td>&nbsp;</td></tr>
</table>
</fieldset>

<p><input type="submit" name="submit" value="{'Submit'|@translate}" {$TAG_INPUT_ENABLED}>
<input type="submit" name="restore" value="{'tn_default_parameters'|@translate}" onclick="return confirm('{'Are you sure?'|@translate|@escape:'javascript'}');" {$TAG_INPUT_ENABLED}></p>
</form>

<script type="text/javascript">
if (document.getElementsByName("display_name")[1].checked == true)
  jQuery('.name_link').hide();
if (document.getElementsByName("display_arrows")[1].checked == true)
  jQuery('.all_cat').hide();
</script>