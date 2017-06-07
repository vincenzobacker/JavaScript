<?php
/* Smarty version 3.1.29, created on 2017-04-12 08:44:52
  from "D:\wamp64\www\Webshop_2017_framework\templates\contact.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_58ede904b1d7d1_27030757',
  'file_dependency' => 
  array (
    'eeb436623c3b3eb8c3fa004f57962dedaedb20ed' => 
    array (
      0 => 'D:\\wamp64\\www\\Webshop_2017_framework\\templates\\contact.tpl',
      1 => 1491986690,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58ede904b1d7d1_27030757 ($_smarty_tpl) {
?>

<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Binnen 24 uur heeft u een reactie.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Vlaardingen, NEDERLAND</p>
      <p><span class="glyphicon glyphicon-phone"></span> +31 6 20 20 55 16</p>
      <p><span class="glyphicon glyphicon-envelope"></span> VINTEL@techrepair.com</p> 
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Naam" type="text" required width: 200px>
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

<!-- Add Google Maps -->

<?php }
}
