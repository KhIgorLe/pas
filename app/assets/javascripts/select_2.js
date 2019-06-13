$(document).on('turbolinks:load', function (){
  $('select#shop_id').select2({
    placeholder: "Shops",
    allowClear: true
  });

  $('select#columns').select2({
    placeholder: "Columns",
    allowClear: true
  });
});
