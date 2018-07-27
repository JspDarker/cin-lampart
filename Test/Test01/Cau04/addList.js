$(function() {
    // : delete all option of select#to
    $('#del-all').on('click',function() {
        let to = $('#to');
        let toList = to.html();
        $('#from').append(toList);
        to.find('option').remove();
    });

    // : add all option
    $('#add-all').on('click',function() {
        let from = $('#from');
        let listAll = from.html();
        //console.log(listAll);
        $('#to').append(listAll)
        //deleteAll();
    });




    $('#add').on('click',function() {
        let cheked = $('#from option:selected');
        $('#to').append(cheked);
    });

    $('#del').on('click',function() {
        let checked = $('#to option:selected');
        $('#from').prepend(checked);
    });

});