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
            //console.log(pass);
            return false;
        } else {
            console.log("OKE PASS");
            let stringRequire = "ZXCVBNMASDFGHJKLQWERTYUIOPqwertyuiopasdfghjklzxcvbnm";
            let numberRequire = "1234567809";
            let specialChar = "$*&!";
            //let n = stringPass.includes(pass); //TODO: end time

            let arr_str = stringRequire.split("");

            let flag_valid = false;
            for (let a in arr_str) {
                console.log(arr_str[a]);
                let ch = arr_str[a];
                if (pass.indexOf(ch) >= 0) {
                    flag_valid = true;
                    break;
                }
            }
                //var str = "Hello world, welcome to the universe.";
                //var n = str.includes("world");
                // let res = pass.includes(arr_str[a]);
                // //console.log(res);
                // if(res === false) {
                //     alert("error");
                //     //console.log(pass);
                //     console.log(res);
                //     return false;
                // }
            //}





            // let allRequire = [stringRequire, numberRequire, specialChar];
            // for(let j in allRequire) {
            //     let str_require = allRequire[j].split();
            //     console.log(str_require.length);
            //     console.log("then");
            //     //return false;
            //
            //     for (let i in allRequire[j]) {
            //         let str_includes = str_require[i].includes(pass);
            //         console.log(str_includes);
            //     }
            // }
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
        if(fullname.val() ==="") {
            console.log("required");
            let nameErr = "tên không được để trống";
            fullname.insertAfter(`<span class="error">${nameErr}</span>`);
            return false;
        } else {
            //fullname.re
        }
        if(checkPass(password) !== true) {
            return false;
        }


    }
    $("#main-form").on('submit',checkForm);
});