const validation = () => {
    let Name = document.getElementById("txt_nname").value;
    let Dob = document.getElementById("txt_nDob").value;
    let Relation = document.getElementById("txt_Relation").value;
    let Mobile = document.getElementById("txt_Mobile").value;
    let Adhar = document.getElementById("txt_Adhar").value;
    let msg = document.querySelector("#lbl_Msg");
    if (Name == "") {
        msg.innerHTML = "Please Enter Nominee Name...";
        msg.style.display = "block";
        return false
    }
    if (Name.length < 4) {
        msg.innerHTML = "Please Enter A Valid Nominee Name...";
        msg.style.display = "block";
        return false
    }
    else if (Dob == "") {
        msg.innerHTML = "Please Enter Date Of Birth Of Nominee...";
        msg.style.display = "block";
        return false
    }
    else if (Relation == "") {
        msg.innerHTML = "Please Enter Relation...";
        msg.style.display = "block";
        return false
    }
    /*else if (Relation.value != "Brother" || Relation != "Father" || Relation != "Mother" || Relation != "Friend" || Relation != "Uncle" || Relation!="Sister") {
        msg.innerHTML = "Please Enter Relation With Nominee...";
        msg.style.display = "block";
        return false
    }*/
    else if (Mobile == "") {
        msg.innerHTML = "Please Enter Mobile Number ...";
        msg.style.display = "block";
        return false
    }
    else if (Mobile.length < 10) {
        msg.innerHTML = "Please Enter A Valid Mobile Number ...";
        msg.style.display = "block";
        return false
    }
    else if (Adhar == "") {
        msg.innerHTML = "Please Enter Adhar Number...";
        msg.style.display = "block";
        return false
    }
    else if (Adhar.length < 12) {
        msg.innerHTML = "Please Enter A Valid Adhar Number...";
        msg.style.display = "block";
        return false
    }
    else {
        return true;
    }
}