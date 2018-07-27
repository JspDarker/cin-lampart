// Process search

$(function() {
    let input_search = $('#search-input');
    let btn_search = $('#search');

    btn_search.on('click',function() {
        if($.trim(input_search.val()) === "") {
            alert("Bạn phải nhập từ khóa");
            return false;
        }
    });

});