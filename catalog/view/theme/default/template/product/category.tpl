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
            <h1 class="my_categore__name"><?php echo $heading_title; ?></h1>
            <?php if ($thumb || $description) { ?>
                <div class="row">

 <!--    удалить               <?php if ($thumb) { ?>
                        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>"
                                                   title="<?php echo $heading_title; ?>" class="img-thumbnail"/></div>
                    <?php } ?>

  -->

                    <?php if ($description) { ?>
                        <div class="col-sm-12">
                            <div class="my_categore__description">  <?php echo $description; ?> </div>
                        </div>
                    <?php } ?>

                    <div class="my_categore_socialNetworks">
                        <a class="block_socialNetworks__link" onclick="require('Metrics').ga.track_event_at('social_links', 'facebook', &quot;&quot;)" target="_blank" title="facebook" href="http://www.facebook.com/share.php?u=https://xn--80aad2agwr.com/"><img src="/image/socButton/facebook_ico.png" alt="facebook"></a>
                        <a class="block_socialNetworks__link" onclick="require('Metrics').ga.track_event_at('social_links', 'twitter', &quot;&quot;)" target="_blank" title="twitter" href="http://twitter.com/home?status=%D1%81%D0%BD%D0%B0%D1%80%D1%8F%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5+%D0%B4%D0%BB%D1%8F+%D1%8D%D0%BA%D1%81%D1%82%D1%80%D0%B5%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B3%D0%BE+%D1%81%D0%BF%D0%BE%D1%80%D1%82%D0%B0+%D0%B8+%D0%BE%D1%82%D0%B4%D1%8B%D1%85%D0%B0+https%3A%2F%2Fxn--80aad2agwr.com%2F+%23prom_ua"><img src="/image/socButton/twitter_ico.png" alt="twitter"></a>
                    </div>

                </div>
            <?php } ?>




            <?php if ($categories) { ?>
<!--                <h3>--><?php //echo $text_refine; ?><!--</h3>-->

<!--                --><?php //if (count($categories) <= 5) { ?>
<!--                    <div class="row">-->
<!--                        <div class="col-xs-12">-->
<!--                            <ul class="my_categore__allElements clearfix">-->
<!--                                --><?php //foreach ($categories as $category) { ?>
<!---->
<!--                                    <li class="my_categore__element">--><?php //if ($thumb) { ?>
<!--                                        <a class="my_categore__elementWrapper" href="--><?php //echo $category['href']; ?><!--">-->
<!---->
<!--                                            <div class="my_categore__imageBlock">-->
<!--                                                <img class="my_categore__image" src="--><?php //echo $category['thumb']; ?><!--"-->
<!--                                                     alt="--><?php //echo $category['name']; ?><!--"/>-->
<!---->
<!--                                                <span class="my_categore__quantityElements">--><?php //echo $category['product_total']; ?><!--  </span>-->
<!--                                            </div>-->
<!--                                            --><?php //} ?>
<!--                                            <p class="my_categore__subcategoryName">--><?php //echo $category['name']; ?><!--</p>-->
<!---->
<!---->
<!--                                        </a>-->
<!--                                    </li>-->
<!---->
<!--                                --><?php //} ?>
<!--                            </ul>-->
<!--                        </div>-->
<!--                    </div>-->

                <?php { ?>





                    <div class="row">

                            <div class="col-xs-12">
                                <ul class="my_categore__allElements clearfix">
                                    <?php foreach ($categories as $category) { ?>
                                        <li class="my_categore__element">
                                            <a class="my_categore__elementWrapper" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?>

                                            <div class="my_categore__imageBlock">
                                               <img class="my_categore__image" src="<?php echo $category['thumb']; ?>"
                                                                               alt="<?php echo $category['name']; ?>"/>

                                <span class="my_categore__quantityElements"><?php echo $category['product_total']; ?>  </span>
                            </div>

                        <p class="my_categore__subcategoryName"><?php echo $category['name']; ?></p>


                                            </a>
                                        </li>
                                    <?php } ?>
                                </ul>
                            </div>

                    </div>
                <?php } ?>
            <?php } ?>
            <?php if ($products) { ?>
                <div class="row">


                    <!--Sorter Group-->
                    <div class="col-xs-12 col-sm-6">
                        <div class="form-group input-group input-group-sm my_sorter__form">
                            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
                            <select id="input-sort" class="form-control my_sorter__form-control"
                                    onchange="location = this.value;">
                                <?php foreach ($sorts as $sorts) { ?>
                                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                        <option value="<?php echo $sorts['href']; ?>"
                                                selected="selected"><?php echo $sorts['text']; ?></option>
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
                    <?php foreach ($products as $product) { ?>
                        <div class="product-layout product-list col-xs-12">
                            <div class="product-thumb">
                                <div class="my_product-line__model">
                                    <span>
                                        <?php if ($product['model']) { ?>
                                            <?php echo $text_model; ?> <?php echo $product['model']; ?>
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

                                        <button class="my_product__buyLink" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                            <span class="my_product__buyButton"><?php echo $button_cart; ?></span>
                                        </button>

                                        <button class="my_product__callbackLink" data-toggle="modal" data-target="#callbackModal" >
                                            <span class="my_product__callbackButton my_callback__button" ></span>
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
                                <!--             <?php echo $results; ?>   -->
                            </div>


                        </div>

                        <!--   How many items show  -->
                        <div class="col-xs-6">
                            <div class="form-group input-group input-group-sm  my_howManyProductsShow__block">
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


            <?php } ?>


            <?php if (!$categories && !$products) { ?>
                <p><?php echo $text_empty; ?></p>


                <div class="buttons">
                    <div class="pull-right"><a href="<?php echo $continue; ?>"
                                               class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                </div>
            <?php } ?>



            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
