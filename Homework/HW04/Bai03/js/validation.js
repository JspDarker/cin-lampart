$(function() {

    $("#main-form").on('submit',function() {

        let name = $("#fname");
        let nameErr = $("#nameErr");

        let email = $('#email');
        let emailErr = $('#emailErr');
        let regex = /^[a-z0-9._-]{2,}@[a-z0-9]+\.[a-z]{2,5}$/i;

        function checkEmail(email, regex) {
            let emails = email.val();
            return (!regex.test(emails)) ? false : "Email không hợp lệ";
        }
        function checkEmptyName(name) {
            return (name.val()==='') ? false : "Tên không được để trống";
        }









        if(!regex.test(email.val())) {
            emailErr.show();
            emailErr.text('Email Không hợp lệ');
            return false;
        } else {
            emailErr.hide();

        }

        if(name.val() === "") {
            nameErr.show();
            nameErr.text('Họ tên không được để trống');
            return false;
        } else {
            nameErr.hide();
            //nameErr.text = "";
            alert('Da het loi');
        }


    });

});