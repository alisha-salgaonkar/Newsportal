

function nameValidate(Name) {
        var name = document.getElementById("" + Name + "");
        var patt1 = /^[A-Za-z ]+$/;
        if (!patt1.test(name.value)) {
            alert("Invalid First Name");
            name.style.borderColor = "red";
            name.value = "";
            return false;
        }
        else {
            name.style.borderColor = "#ccc";
            return true;
        }





    }

    function mobileValidate(Mobile) {

        var re = /^(\+91-|\+91|0)?\d{10}$/;
        var x = document.getElementById("" + Mobile + "");

        if ((x.value).match(re)) {
            x.style.borderColor = "#ccc";
            if (x.value.startsWith("0")) {
                x.value = x.value.substring(1, x.value.length);
            }

            if (x.value.startsWith("+")) {
                x.value = x.value.substring(3, x.value.length);
            }


        }
        else {

            alert("mobile no is not valid");
            x.style.borderColor = "red";
            x.value = "";

        }

    }


    function passwordValidate() {

        var pass1 = document.getElementById("Password");
        var pass2 = document.getElementById("ConfirmPassword");
        if (!(pass1.value === pass2.value)) {
            alert("Password must be the same");
            pass1.style.borderColor = "red";
            pass2.style.borderColor = "red";
            pass1.value = "";
            pass2.value = "";
            return false;
        } else {
            pass1.style.borderColor = "#ccc";
            pass2.style.borderColor = "#ccc";
            return true;
        }



    }



    function emailValidate(EmailFirst) {
        var pass1 = document.getElementById("" + EmailFirst + "");
        var patt3 = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!patt3.test(pass1.value)) {
            alert("Invalid Email");
            pass1.style.borderColor = "red";
            pass1.value = "";
            return false;
        }
        else {

            pass1.style.borderColor = "#ccc";
            return true;
        }

    }

  

    function pinValidate(PIN) {

        var patt = /^([1-9])([0-9]){5}$/;
        var pin = document.getElementById("" + PIN + "");
        if (!patt.test(pin.value)) {
            alert("Invalid Pin");
            pin.style.borderColor = "red";
            pin.value = "";
            return false;
        }
        else {

            pin.style.borderColor = "#ccc";
            return true;
        }
    }


    function cityValidate(City) {

        var patt = /^[a-zA-Z]{2,}$/;
        var city = document.getElementById("" + City + "");
        if (!patt.test(city.value)) {
            alert("Enter Valid City Name");
            city.style.borderColor = "red";
            city.value = "";
            return false;
        }
        else {

            city.style.borderColor = "#ccc";
            return true;
        }
    }



var textbox = document.getElementById('DOB')
    textbox.onfocus = function (event) {
        this.type = 'date';
        this.focus();
    }
