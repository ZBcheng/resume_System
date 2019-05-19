function getLanguage() {
    var elems = document.getElementById('language');
    var instance = M.FormSelect.getInstance(elems);
    var language = instance.getSelectedValues();
    return language.join(" ")
}

function getFrameWorks() {
    var elems = document.getElementById('frameworks');
    var instance = M.FormSelect.getInstance(elems);
    var frameworks = instance.getSelectedValues();
    return frameworks.join(" ")
}




function info_submit() {

    var name = document.getElementById("name").value
    var gender = document.getElementById("gender").value
    var phone = document.getElementById("phone").value
    var email = document.getElementById("email").value
    var birthday = document.getElementById("birthday").value
    var city = document.getElementById("city").value
    var website = document.getElementById("website").value
    var school = document.getElementById("school").value
    var major = document.getElementById("major").value
    var language = getLanguage();
    var frameworks = getFrameWorks();
    var award = document.getElementById("award").value
    var introduce = document.getElementById("introduce").value
    var others = document.getElementById("others").value

    // alert(name)
    // alert(gender)
    // alert(phone)
    // alert(email)
    // alert(birthday)
    // alert(city)
    // alert(website)
    // alert(school)
    // alert(major)
    // alert(language)
    // alert(frameworks)
    // alert(award)
    // alert(introduce)
    // alert(others)

    if (name == "" || gender == "" || phone == "" || email == ""|| birthday == ""|| city == ""|| website == ""|| school == ""|| major == ""|| language == ""|| frameworks == ""|| award == ""|| introduce == ""|| others== "") {
        // if(name == "") {

        var elem = document.getElementById('modal1')
        var instances = M.Modal.init(elem)
        instances.open()
    } else {
        document.getElementById("info_form").submit()
    }
}






