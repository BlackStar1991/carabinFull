<footer>
    <div class="container">
        <div class="row">
            <?php if ($informations) { ?>
                <div class="col-sm-4 ">
<!--                    <h5>--><?php //echo $text_information; ?><!--</h5>-->
                    <ul class="list-unstyled">
                        <?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } ?>



                    </ul>
                </div>
                <div class="col-sm-4 "> <ul class="list-unstyled">
                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                    </ul> </div>
                <div class="col-sm-4 "> <ul class="list-unstyled">
                        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                        <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                    </ul> </div>





            <?php } ?>
<!--             <div class="col-sm-3">
                         <h5>--><?php //echo $text_service; ?><!--</h5>
                <ul class="list-unstyled">


                </ul>
            </div>-->
 <!--             <div class="col-sm-3">
                         <h5>--><?php //echo $text_extra; ?><!--</h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>
            </div>   -->
<!--             <div class="col-sm-3">
                           <h5>--><?php //echo $text_account; ?><!--</h5>
                <ul class="list-unstyled">

                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
            </div>  -->


        </div>
        <!--    <hr>-->
       
    </div>

	
	


    


</footer>

 <div id="callbackModal" class="modal " role="dialog">
       <button type="button" class="close my_button_close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3><span class="glyphicon glyphicon-phone"></span>Заказ обратного звонка</h3>
            <div class="input-group">
                <input type="text" name="telephone" value=""
                       placeholder="Ваш номер телефона"
                       id="input-payment-telephone" class="form-control">
                <input type="hidden" name="product_id" rel="product_id" value="">
                <span class="input-group-btn">
                    <button type="submit" id="button-oneclick"
                            class="btn btn-primary">text_one_click_button</button>
                </span>
            </div>
            <span class="help-block">help</span>
    </div>
	<style>
	div#callbackModal.hide.in {
    display: block !important;
}
	</style>

</body></html>