function f(str) {
    var sub_menu = document.getElementById(str);
    var dis_v = sub_menu.style.display;

    if (dis_v == "block")
        sub_menu.style.display = "none";
    else
        sub_menu.style.display = "block";

}