<!---
//==============================================
// Manufacturer Module 2.0
// Author : OpenCartBoost
// Email : support@opencartboost.com
// Website : http://www.opencartboost.com
//==============================================
--->
<style type="text/css">
.ocbbox {margin-bottom:30px;}
.ocbbox .box-heading .my_title__name{

    margin-top: 20px;
    /*padding:0 0 10px 0;*/
    /*font-size:18px;*/
    /*font-weight:bold;*/
    /*color:#222;border-width:4px;*/
    /*border-style:solid;*/
    /*border-color:#B9B9B9;*/
    /*border-left:none;*/
    /*border-right:none;*/
    /*border-top:none;*/
    /*margin: 0 0 20px;*/
    /*font-size: 27px/40px;*/
}
.ocbbox .my_title__name {

    /*display: block;*/
    /*text-align: left;*/
    /*text-transform: uppercase;*/
    /*overflow: hidden;*/
    /*font-family: "Roboto Slab", sans-serif;*/
    /*font-size: 27px/40px;*/
    /*margin: 0 0 20px;*/
}


/*.ocbbox .box-heading span{padding:0 10px 7px 0;border-bottom:4px solid #2AA3D2;}*/
.ocbbox .box-content{margin-top:10px;margin-left:5px;margin-right:5px;}
</style>

<?php if ($display == 'display_list') { ?>
<div class="ocbbox">
  <div class="box-heading">
<!--      <span class="my_title__name">--><?php //echo $heading_title; ?><!--</span>   <!---  КАК ПОВЕСИТЬ СКРИПТ под HTML? или нет -->

      <span class="my_title__name">ПРОИЗВОДИТЕЛЬ</span>
  </div>
  <div class="box-content">
    <?php if ($manufacturers) { ?>
      <ul class="nav nav-tabs nav-stacked  my_ocbox__group">                           <!---  Сюда нужен скрипт фильтра по товарам  -->
        <?php foreach ($manufacturers as $manufacturer) { ?>
          <li class="my_ocbox__item">


              <input  class="my_ocbox__checkbox" type="checkbox">
                  <a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a>

              <span class="my_ocbox__fullQuantityItemss">(777)</span>             <!---  Сюда нужен скрипт количество товаров с одинаковой маркой  -->

          </li>
        <?php } ?>
      </ul>
    <?php } ?>
  </div>
</div>
<?php } else { ?>
<div class="ocbbox">
  <div class="box-heading">
<!--      <span class="my_title__name">--><?php //echo $heading_title; ?>
      <span class="my_title__name">ПРОИЗВОДИТЕЛЬ</span>
  </div>
  <div class="box-content">
    <?php if ($manufacturers) { ?>
    <select class="form-control" onchange="location=this.options[this.selectedIndex].value;" >
      <option value=""><?php echo $text_select; ?></option>
      <?php foreach ($manufacturers as $manufacturer) { ?>
      <option value="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></option>
      <?php } ?>
    </select>
    <?php } ?>
  </div>
</div>
<?php } ?>

