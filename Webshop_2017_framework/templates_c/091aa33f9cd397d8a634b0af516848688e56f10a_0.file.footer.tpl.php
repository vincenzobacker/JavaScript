<?php
/* Smarty version 3.1.29, created on 2017-03-06 15:06:25
  from "C:\wamp64\www\webshop2017\Webshop\Webshop_2017_framework\templates\footer.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_58bd7af1012d34_57318159',
  'file_dependency' => 
  array (
    '091aa33f9cd397d8a634b0af516848688e56f10a' => 
    array (
      0 => 'C:\\wamp64\\www\\webshop2017\\Webshop\\Webshop_2017_framework\\templates\\footer.tpl',
      1 => 1459807846,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58bd7af1012d34_57318159 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_date_format')) require_once 'C:\\wamp64\\www\\webshop2017\\Webshop\\Webshop_2017_framework\\smarty\\libs\\plugins\\modifier.date_format.php';
?>
<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
    User Information:

Name: Zadkine <br>
Addr: ROC Hogeschool <br>
Date: <?php echo smarty_modifier_date_format(time(),"%b %e, %Y");?>
 <br>
  <p>Roc Zadkine <a href="https://www.deheldenvantechniek.nl/" title="Helden van techniek">https://www.deheldenvantechniek.nl/</a></p> 
</footer>

<?php }
}
