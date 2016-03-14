$(function () {
  var area_val;

  // ロード
  $(document).ready(function () {
    $('select[name=area_name]').hide().attr('disabled', 'disabled');
    drink_val = $('select[name=area]').val();
    $('select[id=type' + area_val +']').removeAttr('disabled').show();
  });

  // area変更
  $('select[name=area]').change(function () {
    $('select[name=area_name]').hide().attr('disabled', 'disabled');
    area_val = $(this).val();
    $('select[id=type' + area_val +']').removeAttr('disabled').show();
  });
});