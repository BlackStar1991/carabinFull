<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta property="og:title" content="<?php echo $title; ?>"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="<?php echo $og_url; ?>"/>
    <?php if ($og_image) { ?>
        <meta property="og:image" content="<?php echo $og_image; ?>"/>
    <?php } else { ?>
        <meta property="og:image" content="<?php echo $logo; ?>"/>
    <?php } ?>
    <meta property="og:site_name" content="<?php echo $name; ?>"/>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="catalog/view/javascript/fontello/css/fontello.css" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/javascript/fontello/css/fontello-codes.css" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/javascript/fontello/css/fontello-embedded.css" rel="stylesheet" type="text/css"/>

<!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">-->
<!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">-->
<!--    <script href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>-->

    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Roboto:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">


    <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
        <?php echo $analytic; ?>
    <?php } ?>

             <!-- add jquery.ui.min if not exist -->
             <script>window.jQuery.ui || document.write('<script src="catalog/view/javascript/jquery/ui/jquery-ui-1.11.4.min.js"><\/script>');
             $('head').append( $('<link rel="stylesheet" type="text/css" />').attr('href', 'catalog/view/javascript/jquery/ui/themes/base/jquery-ui-1.11.4.min.css') );</script>

              <!-- add autocomplete if not exist -->
             <script>jQuery.fn.autocomplete || document.write('<script src="catalog/view/javascript/jquery/ui/jquery-ui-1.11.4.min.js"><\/script>');
             $('head').append( $('<link rel="stylesheet" type="text/css" />').attr('href', 'catalog/view/javascript/jquery/ui/themes/base/jquery-ui-1.11.4.min.css') );</script>

             <!-- add quick search -->
             <link rel="stylesheet" type="text/css" href="catalog/view/javascript/style_search_quick_opencartsu.css"/>
             <script src="catalog/view/javascript/search_quick_opencartsu.js"></script>
            
</head>
<body class="<?php echo $class; ?>">
<!--<nav id="top">-->
<!--    <div class="container">-->
<!--        --><?php //echo $currency; ?>
<!--        --><?php //echo $language; ?>
<!--        <div id="top-links" class="nav pull-right ">-->
<!--            <ul class="list-inline">-->
<!--                <li><a href="-->
<?php //echo $contact; ?><!--"><i class="fa fa-phone"></i></a> <span-->
<!--                            class="hidden-xs hidden-sm hidden-md">-->
<?php //echo $telephone; ?><!--</span></li>-->
<!--                <li class="dropdown"><a href="--><?php //echo $account; ?><!--" title="-->
<?php //echo $text_account; ?><!--"-->
<!--                                        class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span-->
<!--                                class="hidden-xs hidden-sm hidden-md">-->
<?php //echo $text_account; ?><!--</span> <span-->
<!--                                class="caret"></span></a>-->
<!--                    <ul class="dropdown-menu dropdown-menu-right">-->
<!--                        --><?php //if ($logged) { ?>
<!--                            <li><a href="--><?php //echo $account; ?><!--">-->
<?php //echo $text_account; ?><!--</a></li>-->
<!--                            <li><a href="--><?php //echo $order; ?><!--">-->
<?php //echo $text_order; ?><!--</a></li>-->
<!--                            <li><a href="--><?php //echo $transaction; ?><!--">-->
<?php //echo $text_transaction; ?><!--</a></li>-->
<!--                            <li><a href="--><?php //echo $download; ?><!--">-->
<?php //echo $text_download; ?><!--</a></li>-->
<!--                            <li><a href="--><?php //echo $logout; ?><!--">-->
<?php //echo $text_logout; ?><!--</a></li>-->
<!--                        --><?php //} else { ?>
<!--                            <li><a href="--><?php //echo $register; ?><!--">-->
<?php //echo $text_register; ?><!--</a></li>-->
<!--                            <li><a href="--><?php //echo $login; ?><!--">-->
<?php //echo $text_login; ?><!--</a></li>-->
<!--                        --><?php //} ?>
<!--                    </ul>-->
<!--                </li>-->
<!--                <li><a href="--><?php //echo $wishlist; ?><!--" id="wishlist-total" title="-->
<?php //echo $text_wishlist; ?><!--"><i-->
<!--                                class="fa fa-heart"></i> <span-->
<!--                                class="hidden-xs hidden-sm hidden-md">-->
<?php //echo $text_wishlist; ?><!--</span></a></li>-->
<!---->

<!---->
<!---->
<!--                <li><a href="--><?php //echo $checkout; ?><!--" title="-->
<?php //echo $text_checkout; ?><!--"><i class="fa fa-share"></i>-->
<!--                        <span class="hidden-xs hidden-sm hidden-md">-->
<?php //echo $text_checkout; ?><!--</span></a></li>-->
<!--            </ul>-->
<!--        </div>-->
<!--    </div>-->
<!--</nav>-->
<header>
    <div class="container">
        <div class="row">





            <div class="col-xs-12 col-sm-6">
                <nav class="my_rubrics">                                 <!---  СЮДА НУЖЕН СКРИПТ  --->
                    <a href="#" class="my_rubrics__news">
                        Новости
                    </a>
                    <a class="my_rubrics__blog" href="">
                        Блог
                    </a>
                    <a class="my_rubrics__reviews" href="">
                        Отзывы
                    </a>
                </nav>


                <div class="header_logoBox">
                    <div class="companyName">
                        <a href="/">                 <!--- class="companyName_wrapper" -->
                            <?php if ($logo) { ?>
                                <?php if ($home == $og_url) { ?>
                                    <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                         alt="<?php echo $name; ?>"
                                         class="img-responsive companyName_logo"/>
                                <?php } else { ?>
                                    <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>"
                                                                        title="<?php echo $name; ?>"
                                                                        alt="<?php echo $name; ?>"
                                                                        class="img-responsive companyName_logo"/></a>
                                <?php } ?>
                            <?php } else { ?>
                                <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                            <?php } ?>
                            <h2 class="companyName_motto">снаряжение для экстремального спорта и отдыха</h2>
                        </a>
                    </div>
                </div>


            </div>
            <div class="col-xs-12 col-sm-6">

                <div class="my_header__shoppingCartandRegistration">
                    <div class="my_header__formsRegistration">
                        <a href="/login">Войти</a> / <a href="/simpleregister">Зарегистрироваться</a>
                    </div>
                    <div class="my_header__shopingCart">
                        <!--                    <a href="--><?php //echo $shopping_cart; ?><!--" title="-->
                        <!--                        --><?php //echo $text_shopping_cart; ?><!--">-->
                        <!--                        <span class="hidden-xs">-->
                        <!--                        --><?php //echo $text_shopping_cart; ?><!--</span>-->
                        <!--                        <i class="fa fa-shopping-cart"></i>-->
                        <!---->
                        <!--                    </a>-->
                        <?php echo $cart; ?>
                    </div>
                </div>







                <?php echo $search; ?>
            </div>


            <!--            <div class="col-sm-3">--><?php //echo $cart; ?><!--</div>-->
        </div>
    </div>
</header>


<?php if ($categories) { ?>
    <div class="my_wrappen__navigation">
        <div class="container">
            <nav id="menu" class="navbar my_navbar">
                <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                    <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse my_navigation">

                    <ul class="nav navbar-nav">

                        <li><a class="menu_item__active" href="/"> Главная </a > </li>


                        <?php foreach ($categories as $category) { ?>
                            <?php if ($category['children']) { ?>
                                <li class="dropdown"><a href="<?php echo $category['href']; ?>"
                                                        class="dropdown-toggle"><?php echo $category['name']; ?></a>
                                    <div class="dropdown-menu">
                                        <div class="dropdown-inner">
                                            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                <ul class="list-unstyled">
                                                    <?php foreach ($children as $child) { ?>
                                                        <li>
                                                            <a href="<?php echo $child['href']; ?>"> <?php echo $child['name']; ?></a>
                                                        </li>
                                                    <?php } ?>
                                                </ul>
                                            <?php } ?>
                                        </div>
                                        <a href="<?php echo $category['href']; ?>"
                                           class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a>
                                    </div>
                                </li>





                            <?php } else { ?>
                                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>


                            <?php } ?>

                        <?php } ?>
                        <li><a  href="contact-us"> КОНТАКТЫ </a ></li>
                        <li><a  href="delivery"> Доставка и оплата</a ></li>
                        <li><a  href="specials"> Распродажа </a > </li>
                    </ul>

                </div>
            </nav>
        </div>
    </div>
<?php } ?>
