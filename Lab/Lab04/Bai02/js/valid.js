$(function() {

    let fullname = $('#fname');

    let username = $('#username');

    let password = $('#password');

    let password_retype = $('#password_retype');

    let day = $('#days');
    let month = $('#months');
    let year = $('#years');

    let male = $("#male");
    let female = $("#female");

    function checkForm() {
        if(fullname.val() ==="" || username.val() === "") {
            console.log("required");
            return false;
        }


        let pass = password.val();
        if(pass.length <6) {
            console.log("min length 6");
            console.log(pass);
            return false;
        } else {
            console.log("OKE PASS");
            let stringPass = "1234567890!@#$%^&*()qwertyuiopasdfghjklzxcvbnm";
            let n = stringPass.includes(pass); //TODO: end time

        }

        /**
         * function myFunction() {
                var str = "Hello world, welcome to the universe.";
                 var n = str.includes("world");
                document.getElementById("demo").innerHTML = n;
            }
         */

    }

    $("#main-form").on('submit',checkForm);
});