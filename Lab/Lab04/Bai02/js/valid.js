$(function() {
    let fullname = $('#fname');
    let username = $('#username');
    let day = $('#days');
    let month = $('#months');
    let year = $('#years');
    let male = $("#male");
    let female = $("#female");

    let password = $('#password');
    let password_retype = $('#password_retype');

    function checkPass(password) {
        let pass = password.val();
        if(pass.length <6) {
            console.log("min length 6");
            console.log(pass);
            return false;
        } else {
            console.log("OKE PASS");
            let stringRequire = "ZXCVBNMASDFGHJKLQWERTYUIOPqwertyuiopasdfghjklzxcvbnm";
            let numberRequire = "1234567809";
            let specialChar = "$*&!";
            //let n = stringPass.includes(pass); //TODO: end time


            let str_require = stringRequire.split();
            for(let i in str_require) {
                let str_includes = str_require[i].includes(pass);
                console.log(str_includes);
            }



            function checkOneCharExist() {

            }

            return false;

        }
        /**
         * function myFunction() {
                var str = "Hello world, welcome to the universe.";
                 var n = str.includes("world");
                document.getElementById("demo").innerHTML = n;
            }
         */



    }
    function checkForm() {
        if(fullname.val() ==="" || username.val() === "") {
            console.log("required");
            return false;
        }
        if(checkPass(password) !== true) {
            return false;
        }


    }
    $("#main-form").on('submit',checkForm);
});