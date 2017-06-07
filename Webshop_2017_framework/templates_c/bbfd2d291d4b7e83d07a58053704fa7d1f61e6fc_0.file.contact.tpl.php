<?php
/* Smarty version 3.1.29, created on 2017-03-06 15:29:21
  from "C:\wamp64\www\webshop2017\Webshop\Webshop_2017_framework\templates\contact.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_58bd8051128ab0_68720953',
  'file_dependency' => 
  array (
    'bbfd2d291d4b7e83d07a58053704fa7d1f61e6fc' => 
    array (
      0 => 'C:\\wamp64\\www\\webshop2017\\Webshop\\Webshop_2017_framework\\templates\\contact.tpl',
      1 => 1488814159,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58bd8051128ab0_68720953 ($_smarty_tpl) {
?>

<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Binnen 24 uur heeft u een reactie.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Vlaardingen, NL</p>
      <p><span class="glyphicon glyphicon-phone"></span> +316 39 66 58</p>
      <p><span class="glyphicon glyphicon-envelope"></span> itprotectionservice@gmail.com</p> 
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Naam" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Reactie" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Verzenden</button>
        </div>
      </div> 
    </div>
  </div>
</div>

<!-- Set height and width with CSS -->
<div id="googleMap" style="height:400px;width:100%;"></div>

<!-- Add Google Maps --><?php }
}
