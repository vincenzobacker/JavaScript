<?php
/* Smarty version 3.1.29, created on 2017-03-27 11:52:08
  from "D:\wamp64\www\Webshop_2017_framework\templates\footer.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_58d8fce820f7c9_43493051',
  'file_dependency' => 
  array (
    '5196800022baf6aa5507ab69839ac21a020bbf7e' => 
    array (
      0 => 'D:\\wamp64\\www\\Webshop_2017_framework\\templates\\footer.tpl',
      1 => 1490615521,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58d8fce820f7c9_43493051 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_date_format')) require_once 'D:\\wamp64\\www\\Webshop_2017_framework\\smarty\\libs\\plugins\\modifier.date_format.php';
?>
<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
    User Information:

 Name: VINTEL <br>
Adres: VINTEL <br>
Date: <?php echo smarty_modifier_date_format(time(),"%b %e, %Y");?>
 <br>
  <p>Locatie: <a href="https://www.VINTELtechrepair.nl/" title="Helden van de techniek">https://www.VINTELtechrepair.nl/</a></p> 
</footer>

<?php }
}
