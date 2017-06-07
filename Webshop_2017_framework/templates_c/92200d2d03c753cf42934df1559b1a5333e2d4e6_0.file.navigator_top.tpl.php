<?php
/* Smarty version 3.1.29, created on 2017-03-20 12:18:32
  from "C:\wamp64\www\webshop2017\Webshop\Webshop_2017_framework\templates\navigator_top.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_58cfc8981969d9_86973110',
  'file_dependency' => 
  array (
    '92200d2d03c753cf42934df1559b1a5333e2d4e6' => 
    array (
      0 => 'C:\\wamp64\\www\\webshop2017\\Webshop\\Webshop_2017_framework\\templates\\navigator_top.tpl',
      1 => 1490012307,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58cfc8981969d9_86973110 ($_smarty_tpl) {
?>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
     <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">logo <img src="..\..\Webshop\Webshop_2017_framework\images\logo-designer.png" height="120" width="300"></a>
      
     </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
         <li><a href="#about">Over ons</a></li>
        <li><a href="#services">Wat kunnen wij?</a></li>
        <li><a href="#prijzen">Prijzen</a></li>
        <li><a href="./includes/bestelOverzicht.php">BESTELLINGEN</a></li>
        <li><a href="#PRODUCTS">Producten</a></li>
        <li><a href="#contact">Contact</a></li>
		<li><a href="templates/klanten.php">Klanten</a></li>
      </ul>
     </div>
  </div>
</nav>
<?php }
}
