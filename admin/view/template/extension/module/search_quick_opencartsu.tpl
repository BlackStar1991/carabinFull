<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-account" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-account" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-3 control-label" for="input-status"><?php echo $text_status; ?></label>
            <div class="col-sm-9">
              <select name="searchquickopencartsu_status" id="input-status" class="form-control">
                <?php if ($searchquickopencartsu_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-4 control-label" for="input-img"><?php echo $text_img; ?></label>
            <div class="col-sm-2">
              <select name="searchquickopencartsu_img" id="input-img" class="form-control">
                <?php if ($searchquickopencartsu_img) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
            <label class="col-sm-2 control-label" for="input-imgwidth"><?php echo $text_imgwidth; ?></label>
            <div class="col-sm-1">
                <?php if ($searchquickopencartsu_imgwidth) { ?>
                <input class="form-control" size="2" id="input-imgwidth" name="searchquickopencartsu_imgwidth" type="text" value="<?php echo $searchquickopencartsu_imgwidth; ?>">
                <?php } else { ?>
                <input class="form-control" size="2" id="input-imgwidth" name="searchquickopencartsu_imgwidth" type="text" value="30">
                <?php } ?>
            </div>
            <label class="col-sm-2 control-label" for="input-imgheight"><?php echo $text_imgheight; ?></label>
            <div class="col-sm-1">
                <?php if ($searchquickopencartsu_imgheight) { ?>
                <input class="form-control" size="2" id="input-imgheight" name="searchquickopencartsu_imgheight" type="text" value="<?php echo $searchquickopencartsu_imgheight; ?>">
                <?php } else { ?>
                <input class="form-control" size="2" id="input-imgheight" name="searchquickopencartsu_imgheight" type="text" value="30">
                <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-4 control-label" for="input-price"><?php echo $text_price; ?></label>
            <div class="col-sm-8">
              <select name="searchquickopencartsu_price" id="input-price" class="form-control">
                <?php if ($searchquickopencartsu_price) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-4 control-label" for="input-quantity"><?php echo $text_quantity; ?></label>
            <div class="col-sm-8">
              <select name="searchquickopencartsu_quantity" id="input-quantity" class="form-control">
                <?php if ($searchquickopencartsu_quantity) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-4 control-label" for="input-maxquery"><?php echo $text_maxquery; ?></label>
            <div class="col-sm-1">
                <?php if ($searchquickopencartsu_maxquery) { ?>
                <input class="form-control" size="3" id="input-maxquery" name="searchquickopencartsu_maxquery" type="text" value="<?php echo $searchquickopencartsu_maxquery; ?>">
                <?php } else { ?>
                <input class="form-control" size="3" id="input-maxquery" name="searchquickopencartsu_maxquery" type="text" value="10">
                <?php } ?>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>