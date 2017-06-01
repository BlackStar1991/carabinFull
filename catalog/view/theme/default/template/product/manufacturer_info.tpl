<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>


    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1 class="my_manufacturer__name"><?php echo $heading_title; ?></h1>
      <?php if ($description) { ?>



      <div class="row">


        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>





      <?php if ($products) { ?>
      <div class="row">

 <!--       <div class="col-md-2 col-sm-6 hidden-xs">
          <div class="btn-group btn-group-sm">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="form-group">
            <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
          </div>
        </div>
        <div class="col-md-4 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
            <select id="input-sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="col-md-3 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
   -->


          <!--Sorter Group-->
          <div class="col-xs-12 col-sm-6">
              <div class="form-group input-group input-group-sm my_sorter__form">
                  <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
                  <select id="input-sort" class="form-control" onchange="location = this.value;">
                      <?php foreach ($sorts as $sorts) { ?>
                          <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                          <?php } else { ?>
                              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                          <?php } ?>
                      <?php } ?>
                  </select>
              </div>
          </div>

          <!--Buttons sorter-->
          <div class="col-sm-6 hidden-xs">
              <div class="btn-group btn-group-sm my_sorter__group">
                  <button type="button" id="list-view" class="btn btn-default " data-toggle="tooltip"
                          title="<?php echo $button_list; ?>"><i class="fa fa-th-list my_sorter__button"></i>
                  </button>
                  <button type="button" id="grid-view" class="btn btn-default " data-toggle="tooltip"
                          title="<?php echo $button_grid; ?>"><i class="fa fa-th my_sorter__button"></i>
                  </button>
              </div>
          </div>


      </div>







      <div class="row">
  <!--      <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
-->



          <?php foreach ($products as $product) { ?>
              <div class="product-layout product-list col-xs-12">
                  <div class="product-thumb">
                      <div class="my_product-line__model">
                                    <span>
                                        <?php if ($product['model']) { ?>
                                            <?php echo $text_model; ?><?php echo $product['model']; ?>
                                        <?php } ?>
                                    </span>
                      </div>


                      <div class="image my_product clearfix">
                          <a class="my_product__imageWrappen" href="<?php echo $product['href']; ?>">
                              <img src="<?php echo $product['thumb']; ?>"
                                   alt="<?php echo $product['name']; ?>"
                                   title="<?php echo $product['name']; ?>"

                                   class="img-responsive my_product__imagePhoto"/></a>


                          <div class="my_product__contactButtons">

                              <button class="my_product__buyLink"
                                      onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                  <span class="hidden-xs my_product__buyButton"><?php echo $button_cart; ?></span>
                              </button>

                              <button class="my_product__callbackLink" href="#">
                                  <span class="my_product__callbackButton my_callback__button"></span>
                                  <p class="my_product__callbackButtonDescription">
                                      <span>Оставьте свой номер телефона и представитель компании свяжется с вами</span>
                                  </p>
                              </button>


                          </div>


                      </div>





                      <div class="caption">
                          <h4>
                              <a class="my_caption__item"
                                 href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                          </h4>

                          <!--                                        <p class="my_description_product">-->
                          <?php //echo $product['description']; ?><!--</p>-->

                          <?php if ($product['price']) { ?>
                              <p class="price my_price__item">
                                  <?php if (!$product['special']) { ?>
                                      <?php echo $product['price']; ?>
                                  <?php } else { ?>
                                      <span class="price-new"><?php echo $product['special']; ?></span>
                                      <span class="price-old"><?php echo $product['price']; ?></span>
                                  <?php } ?>
                                  <?php if ($product['tax']) { ?>
                                      <span class="price-tax"><?php echo $text_tax; ?><?php echo $product['tax']; ?></span>
                                  <?php } ?>
                              </p>
                          <?php } ?>

                          <div class="my_product-line__data">
                              <span><?php echo $product['stock']; ?></span>
                          </div>

                      </div>
                  </div>
              </div>
          <?php } ?>


          <!-- Navigation on items -->
          <div class="my_menuCreate clearfix">

              <div class="col-xs-6">
                  <div class="my_paginatorBlock">
                      <?php echo $pagination; ?>
                  </div>
              </div>




              <!--   How many items show  -->
              <div class="col-xs-6">
                  <div class="form-group  my_howManyProductsShow__block">
                      <label class="input-group-addon my_howManyProductsShow__textElements"
                             for="input-limit"><?php echo $text_limit; ?></label>
                      <select id="input-limit" class="form-control my_howManyProductsShow__items"
                              onchange="location = this.value;">
                          <?php foreach ($limits as $limits) { ?>
                              <?php if ($limits['value'] == $limit) { ?>
                                  <option class="my_howManyProductsShow__elements"
                                          value="<?php echo $limits['href']; ?>"
                                          selected="selected"><?php echo $limits['text']; ?></option>
                              <?php } else { ?>
                                  <option class="my_howManyProductsShow__elements"
                                          value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                              <?php } ?>
                          <?php } ?>
                      </select>
                  </div>
              </div>

          </div>





      </div>




<!--      <div class="row">-->
<!--        <div class="col-sm-6 text-left">--><?php //echo $pagination; ?><!--</div>-->
<!--        <div class="col-sm-6 text-right">--><?php //echo $results; ?><!--</div>-->
<!--      </div>-->




      <?php }

      else { ?>
      <p><?php echo $text_empty; ?></p>
<!--      <div class="buttons">-->
<!--        <div class="pull-right"><a href="--><?php //echo $continue; ?><!--" class="btn btn-primary">--><?php //echo $button_continue; ?><!--</a></div>-->
<!--      </div>-->
      <?php } ?>



      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>