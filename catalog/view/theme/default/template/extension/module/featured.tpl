<h3><?php echo $heading_title; ?></h3>
<div class="row">
   <div class="fullPage">

    <?php foreach ($products as $product) { ?>
    <div class="product-layout my_product_fuatured col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="product-thumb transition">


                <div class="image my_product">
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

                        <div class="my_product-line__data">            <!-- вставить модуль -->
                            <span>В наличии</span>
                        </div>


                        <!--                                        --><?php //if ($product['rating']) { ?>
                        <!--                                            <div class="rating">-->
                        <!--                                                --><?php //for ($i = 1; $i <= 5; $i++) { ?>
                        <!--                                                    --><?php //if ($product['rating'] < $i) { ?>
                        <!--                                                        <span class="fa fa-stack"><i-->
                        <!--                                                                    class="fa fa-star-o fa-stack-2x"></i></span>-->
                        <!--                                                    --><?php //} else { ?>
                        <!--                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i-->
                        <!--                                                                    class="fa fa-star-o fa-stack-2x"></i></span>-->
                        <!--                                                    --><?php //} ?>
                        <!--                                                --><?php //} ?>
                        <!--                                            </div>-->
                        <!--                                        --><?php //} ?>
                    </div>

                    <!--                                    <div class="button-group">-->
                    <!--         <button class="my_cart__button" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md my_cart__textNearButton"><?php echo $button_cart; ?></span></button>
             <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>   -->
                    <!--                                    </div>-->
                </div>



        </div>


</div>

        <!-- BUTTON-->
        <div class="my_navigationFild">
            <!--   ПОСТАВИТЬ ССЫЛК НА ФАЙЛЫ -->
            <button class="my_button__goodsServices">
                <a href="#">
                    Все товары и услуги                               <!-- Добавить код -->
                </a>
            </button>

        </div>


        <hr>

        <?php } ?>
    </div>
</div>