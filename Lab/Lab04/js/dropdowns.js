$(function() {
    let $menu_list = $('#nav-header > ul');
    let $button = $('#dropdowns');
    $button.on('click', displayMenu);

    function displayMenu() {
        $menu_list.toggle();

        // $menu_list.show(0,function() {
        //     $button.click(function() {
        //         $menu_list.none();
        //     });
        // });
    }
});