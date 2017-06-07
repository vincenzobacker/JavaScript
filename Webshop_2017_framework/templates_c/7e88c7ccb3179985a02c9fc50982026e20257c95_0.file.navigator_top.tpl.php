<?php
/* Smarty version 3.1.29, created on 2017-04-19 09:28:13
  from "D:\wamp64\www\Webshop_2017_framework\templates\navigator_top.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_58f72dadce2d67_77647310',
  'file_dependency' => 
  array (
    '7e88c7ccb3179985a02c9fc50982026e20257c95' => 
    array (
      0 => 'D:\\wamp64\\www\\Webshop_2017_framework\\templates\\navigator_top.tpl',
      1 => 1492594091,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58f72dadce2d67_77647310 ($_smarty_tpl) {
?>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
     <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#"><img src="Logo-Vintel-S.png" width="200px" height"80px" </a>
      
     </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
         <li><a href="#about">Over ons</a></li>
        <li><a href="#services">Wat kunnen wij?</a></li>
        <li><a href="#prijzen">Prijzen</a></li>
        <li><a href="./templates/bestelling.html">BESTELLINGEN</a></li>
        <li><a href="./includes/overzicht.php">bestelling</a></li>
        <li><a href="#contact">Contact</a></li>
		<li><a href="templates/klanten.php">Klanten</a></li>
		<li><a href="templates/Betalen.php">winkelwagen</a></li>
      </ul>
     </div>
  </div>
</nav>
<?php }
}
