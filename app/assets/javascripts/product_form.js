
// ----------------------------
//    application.js
// ----------------------------

$(function() {
    $('.row_dim').hide(); 
    $('#product_category_type_id').change(function(){
        if($('#product_category_type_id').val() == 1) {
            $('.clothes_type').show();
            $('.accessories_type').hide();
            $('.shoes_type').hide();
            $('.bag_type').hide();
            $('.gift_type').hide();
        } else if ($('#product_category_type_id').val() == 2) {
            $('.accessories_type').show();
            $('.clothes_type').hide();
            $('.shoes_type').hide();
            $('.bag_type').hide();
            $('.gift_type').hide(); 
        } else if ($('#product_category_type_id').val() == 3) {
            $('.shoes_type').show();
            $('.clothes_type').hide();
            $('.accessories_type').hide();
            $('.bag_type').hide();
            $('.gift_type').hide(); 
        } else if ($('#product_category_type_id').val() == 4) {
            $('.bag_type').show();
            $('.clothes_type').hide();
            $('.accessories_type').hide();
            $('.shoes_type').hide();
            $('.gift_type').hide(); 
        } else if ($('#product_category_type_id').val() == 5) {
            $('.gift_type').show();
            $('.clothes_type').hide();
            $('.accessories_type').hide();
            $('.shoes_type').hide();
            $('.bag_type').hide(); 
        } 
    });
});

$(function() {
  $('.product_saleprice').hide(); 
  $('#product_sale').click(function(){
    $('.product_saleprice').toggle();
  });
});

