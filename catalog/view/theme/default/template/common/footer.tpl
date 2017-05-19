<footer>
    <div class="container">
        <div class="row">
            <?php if ($informations) { ?>
                <div class="col-sm-3">
                    <h5><?php echo $text_information; ?></h5>
                    <ul class="list-unstyled">
                        <?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            <?php } ?>
            <div class="col-sm-3">
                <h5><?php echo $text_service; ?></h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                    <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                    <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5><?php echo $text_extra; ?></h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5><?php echo $text_account; ?></h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
            </div>
        </div>
        <!--    <hr>-->
        <!--    <p>--><?php //echo $powered; ?><!--</p>-->
    </div>

    <div id="my_modal__callback" class="modal hide fade"> <!-- id="oneclick"*/ -->
        <div class="my_modal__window">
            <button type="button" class="close my_button_close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3><span class="glyphicon glyphicon-phone"></span><?php echo $text_one_click_header; ?></h3>
            <div class="input-group">
                <input type="text" name="telephone" value=""
                       placeholder="<?php echo $text_one_click_placeholder; ?>"
                       id="input-payment-telephone" class="form-control">
                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
                <span class="input-group-btn">
                    <button type="submit" id="button-oneclick"
                            class="btn btn-primary"><?php echo $text_one_click_button; ?></button>
                </span>
            </div>
            <span class="help-block"><?php echo $text_one_click_help; ?></span>
        </div>
        <script src="catalog/view/javascript/jquery.maskedinput.min.js"
                type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#input-payment-telephone").mask("<?php echo $text_one_click_mask; ?>", {placeholder: " "});
            });
        </script>
    </div>

    </div>


</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>