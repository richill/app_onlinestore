
// ----------------------------
//    application.js
// ----------------------------




$(function() {
    $('.row_dim').hide(); 
    $('#product_category_type_id').change(function(){
        if($('#product_category_type_id').val() == 1) {
            $('.clothes_type').show();
        // else if($('#product_category_type_id').val() == 2) {
        //     $('.accessories_type').show(); 
        // else if($('#product_category_type_id').val() == 3) {
        //     $('.shoes_type').show(); 
        // else if($('#product_category_type_id').val() == 4) {
        //     $('.bag_type').show(); 
        } else {
            $('.row_dim').hide(); 
        } 
    });
});



