<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><a href="<?php echo $insert; ?>" data-toggle="tooltip" title="<?php echo $button_insert; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-country').submit() : false;"><i class="fa fa-trash-o"></i></button>
      </div>
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
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
        <div class="well">
          <div class="row">
            <div class="col-sm-3">
              <div class="form-group">
                <label class="control-label" for="input-country"><?php echo $entry_country; ?></label>
                <select name="filter_country" id="input-country" onchange="country(this, '<?php echo $filter_zone; ?>');" class="form-control">
                  <option value="*"></option>
                  <?php foreach ($countries as $country) { ?>
                  <?php if ($country['country_id'] == $filter_country) { ?>
                  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group">
                <label class="control-label" for="input-zone"><?php echo $entry_zone; ?></label>
                <select name="filter_zone" id="input-zone" class="form-control">
                  <option value="*"></option>
                </select>
              </div>
            </div>
            <div class="col-sm-5">
              <div class="form-group">
                <label class="control-label" for="input-city"><?php echo $entry_name; ?></label>
                <input type="text" name="filter_city" value="<?php echo $filter_city; ?>" placeholder="<?php echo $entry_name; ?>" id="input-city" class="form-control" />
              </div>
            </div>
            <div class="col-sm-1">
              <div class="form-group">
              <label for="button-filter" class="control-label">&nbsp;</label>
              <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="fa fa-search"></i> <?php echo $button_filter; ?></button>
              </div>
            </div>
          </div>
        </div>
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-country">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
                  <td class="text-left"><?php if ($sort == 'zone') { ?>
                    <a href="<?php echo $sort_zone; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_zone; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_zone; ?>"><?php echo $column_zone; ?></a>
                    <?php } ?></td>
                  <td class="text-left"><?php if ($sort == 'name') { ?>
                    <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
                    <?php } ?></td>
                  <td class="text-left"><?php echo $column_status; ?></td>
                  <td class="text-right"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($cities) { ?>
                <?php foreach ($cities as $city) { ?>
                <tr>
                  <td style="text-align: center;"><?php if ($city['selected']) { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $city['city_id']; ?>" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $city['city_id']; ?>" />
                    <?php } ?></td>
                  <td class="text-left"><?php echo $city['zone']; ?></td>
                  <td class="text-left"><?php echo $city['name']; ?></td>
                  <td class="text-left"><?php echo $city['status']; ?></td>
                  <td class="text-right"><a href="<?php echo $city['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="5"><?php echo $text_no_results; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </form>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
function country(element, zone_id) {
  if (element.value != '*') {
		$.ajax({
			url: 'index.php?route=localisation/city/country&token=<?php echo $token; ?>&country_id=' + element.value,
			dataType: 'json',
			beforeSend: function() {
				$('select[name=\'filter_zone\']').html('<option value="*"><i class="fa fa-circle-o-notch fa-spin"></i></option>');
			},
			complete: function() {
				$('.fa-spin').remove();
			},
			success: function(json) {
                $('.fa-spin').remove();
				html = '<option value="*"><?php echo $text_all; ?></option>';

				if (json['zone'] != '') {
					for (i = 0; i < json['zone'].length; i++) {
						html += '<option value="' + json['zone'][i]['zone_id'] + '"';

						if (json['zone'][i]['zone_id'] == zone_id) {
							html += ' selected="selected"';
						}

						html += '>' + json['zone'][i]['name'] + '</option>';
					}
				}

				$('select[name=\'filter_zone\']').html(html);
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText);
			}
		});
	} else {
        $('select[name=\'filter_zone\']').html('<option value="*"></option>');
    }
}
$('select[name$=\'filter_country\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {

  url = 'index.php?route=localisation/city&token=<?php echo $token; ?>';

  var filterCountry = $('select[name=\'filter_country\']').val();

  if (filterCountry != '*') {
    url += '&filter_country=' + filterCountry;
  }

  var filterZone = $('select[name=\'filter_zone\']').val();

  if (filterZone != '*') {
    url += '&filter_zone=' + filterZone;
  }

  var filterCity = $('input[name=\'filter_city\']').val();

  if (filterCity) {
    url += '&filter_city=' + encodeURIComponent(filterCity);
  }

  location = url;
});
//--></script>
<?php echo $footer; ?>
