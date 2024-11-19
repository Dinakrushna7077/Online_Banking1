const validation = () => {
    let user = document.getElementById("txt_admin").value;
    let psw = document.getElementById("txt_pass").value;
    let msg1 = document.querySelector("#lbl_msg1");
    let msg2 = document.querySelector("#lbl_msg2");
    
    if (user == "" && psw == "") {
        msg1.innerHTML = "User Id Required...";
        msg2.innerHTML = "Password Required...";
        msg1.style.display = "block";
        msg2.style.display = "block";
        document.querySelector("#txt_admin").focus();
        return false;
    }
    else if (user == "") {
        msg1.innerHTML = "User Id Required...";
        msg2.style.display = "none";
        msg1.style.display = "block";
        document.querySelector("#txt_admin").focus();
        return false;
    }
    else if (user.length<4) {
        msg1.innerHTML = "User Id Should Be More Than 4 Characters...";
        msg2.style.display = "none";
        msg1.style.display = "block";
        document.querySelector("#txt_admin").focus();
        return false;
    }
    else if (psw == "") {
        msg2.innerHTML = "Password Required...";
        msg1.style.display = "none";
        msg2.style.display = "block";
        document.querySelector("#txt_pass").focus();
        return false;
    }
    else if (psw.length<4||psw.length>=16) {
        msg2.innerHTML = "Password Length Should be 4-16 Characters";
        msg1.style.display = "none";
        msg2.style.display = "block";
        document.querySelector("#txt_pass").focus();
        return false;
    }

    else {
        
        return true;
    }
}

/*const autofill = () => {
    let cookies = document.cookie;
    var allcookie = cookie.split(";")
    for (i = 0; i < allcookie.length; i++) {
        let dt = allcookie[i];
        var str = dt.split["="];
        if (str[0].trim() == document.getElementById('txt_uname').value.trim);
        {
            document.getElementById('txt_pass').value = str[1];
            break;
        }
    }
}*/