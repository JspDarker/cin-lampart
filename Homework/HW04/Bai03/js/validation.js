$(function() {

    $("#btnPrimary").on('click',function() {

        //let error = [];
        let name = $("#fname");
        let email = $('#email');
        let password = $('#password');
        let regex = /^[a-z0-9._-]{2,}@[a-z0-9-]+\.[a-z]{2,5}$/i;
        let passValue = ['1234567809', 'qwertyuiop', '$%^&*'];

        function checkRegex(field, regex) {
            return regex.test(field.val());
        }
        function isEmptyField(fieldObj) {
            return $.trim(fieldObj.val()) ==="";
        }

        function checkPassAdvanced(passValue, password = "") {
            // noinspection JSAnnotator
            $.map( passValue, function( val, i ) {
                // Do something
                //console.log(passValue[val]);
                console.log(val + " --- " + i);
                //break;
            });
        }

        checkPassAdvanced(passValue);
        // function checkPassAdvanced(arrayRequired, fieldObj) {
        //     $.map( realArray, function( val, i ) {
        //         // Do something
        //     });
        // }

        // name
        if(isEmptyField(name) ===true) {
            $('span#nameErr').text("Name is required").addClass('show-error');
        } else {
            $('span#nameErr').removeClass('show-error');
        }

        // Email
        if(checkRegex(email,regex) !== true) {
            $('span#emailErr').text("Email invalid!").addClass('show-error');
            //console.log("field is required");
        } else {
            $('span#emailErr').removeClass('show-error');
        }

        //pass empty
        if(isEmptyField(password) ===true) {
            $('span#passErr').text("Password is required").addClass('show-error');
            //console.log("field is required");
        } else {
            $('span#passErr').removeClass('show-error');
            checkPassAdvanced();
        }
        console.log('before return false');
        return false;







        // if(!regex.test(email.val())) {
        //     emailErr.show();
        //     emailErr.text('Email Không hợp lệ');
        //     return false;
        // } else {
        //     emailErr.hide();
        //
        // }
        //
        // if(name.val() === "") {
        //     nameErr.show();
        //     nameErr.text('Họ tên không được để trống');
        //     return false;
        // } else {
        //     nameErr.hide();
        //     //nameErr.text = "";
        //     alert('Da het loi');
        // }


    });

});