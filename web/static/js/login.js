function login() {
    var elem = document.getElementById('modal1')
    var username = document.getElementById("username").value
    var password = document.getElementById("password").value
    alert(username)
    alert(password)
    if(username == "") {
        var elem = document.getElementById('modal1')
        var instances = M.Modal.init(elem)
    } else {
        document.getElementById("log_form").submit()
    }
}






