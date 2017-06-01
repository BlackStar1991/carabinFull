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
            <!--      <h1>--><?php //echo $heading_title; ?><!--</h1>-->
            <!--      <h3>--><?php //echo $text_location; ?><!--</h3>-->
            <h1 class="my_contact__title">КОНТАКТНАЯ ИНФОРМАЦИЯ </h1>

            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12">

                            <table class="my_contact-info">
                                <tbody>

                                <tr class="my_contact-info__row">
                                    <td class="my_contact-info__cell my_contact-info__cell_width_200">
                                        Адрес:
                                    </td>
                                    <td class="my_contact-info__cell">
                                        бул. Верховного Совета, д.304 (м.Черниговская).,
                                        Киев,
                                        Украина
                                    </td>
                                </tr>
                                <tr class="my_contact-info__row">
                                    <td class="my_contact-info__cell">
                                        Телефон:
                                    </td>
                                    <td class="my_contact-info__cell">
                                        <div>
                                            <span>+380 (95) 645-53-32</span>

                                        </div>
                                        <div>
                                            <span>+380 (96) 090-11-19</span>

                                        </div>
                                        <div>
                                            <span>+380 (63) 919-11-19</span>

                                        </div>
                                        <div>
                                            <span>+7 (978) 764-28-96</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="my_contact-info__row">
                                    <td class="my_contact-info__cell my_contact-info__cell_width_200">Время работы:</td>
                                    <td class="my_contact-info__cell">
                                        08:00 — 21:00 Пн-Вс
                                    </td>
                                </tr>
                                <tr class="my_contact-info__row">
                                    <td class="my_contact-info__cell my_contact-info__cell_width_200">Email:</td>
                                    <td class="my_contact-info__cell">
                                        karabincom@ukr.net
                                    </td>
                                </tr>
                                </tbody>
                            </table>












                        </div>
                    </div>
                </div>
            </div>
            <?php if ($locations) { ?>
                <h3><?php echo $text_store; ?></h3>
                <div class="panel-group" id="accordion">
                    <?php foreach ($locations as $location) { ?>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a
                                            href="#collapse-location<?php echo $location['location_id']; ?>"
                                            class="accordion-toggle" data-toggle="collapse"
                                            data-parent="#accordion"><?php echo $location['name']; ?> <i
                                                class="fa fa-caret-down"></i></a></h4>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            <?php } ?>


            <div class="my_contact__map">
                <div class="my_contact__overlayMap" onClick="style.pointerEvents='none'"></div>
                <div style="width: 100%; height: 420px; border: 0 none" data-extend="GoogleMapsEmbed">

                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2540.5638526483735!2d30.619704615047475!3d50.449224095335296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4c5570ca6f499%3A0x7f2bba4d5b037f0c!2z0LHRg9C70YzQstCw0YAg0JLQtdGA0YXQvtCy0L3QvtGXINCg0LDQtNC4LCDQmtC40ZfQsg!5e0!3m2!1sru!2sua!4v1495716348112"
                            width="100%" height="420" frameborder="0" style="border:0"  allowfullscreen=""></iframe>

                </div>
            </div>


            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                <fieldset>
                    <legend><?php echo $text_contact; ?></legend>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="name" value="<?php echo $name; ?>" id="input-name"
                                   class="form-control"/>
                            <?php if ($error_name) { ?>
                                <div class="text-danger"><?php echo $error_name; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="email" value="<?php echo $email; ?>" id="input-email"
                                   class="form-control"/>
                            <?php if ($error_email) { ?>
                                <div class="text-danger"><?php echo $error_email; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                        <div class="col-sm-10">
                            <textarea name="enquiry" rows="10" id="input-enquiry"
                                      class="form-control"><?php echo $enquiry; ?></textarea>
                            <?php if ($error_enquiry) { ?>
                                <div class="text-danger"><?php echo $error_enquiry; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <?php echo $captcha; ?>
                </fieldset>
                <div class="buttons">
                    <div class="pull-right">
                        <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>"/>
                    </div>
                </div>
            </form>
        </div>
            <?php echo $column_right; ?></div>
        <?php echo $content_bottom; ?></div>

</div>
<?php echo $footer; ?>
