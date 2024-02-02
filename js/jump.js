function jumpToAdd()
{
    window.location.href = "../html/增加物品.html";
}

function jumpToDecrease()
{
    window.location.href = "../html/删除物品.html";
}

function jumpToMain()
{
    let username = document.getElementById("Users").innerHTML;
    let currency = document.getElementById("currency").innerHTML;
    window.location.href = "../html/splatoon武器价目表.html?" + "username=" + username + "&currency^" + currency;
}

function jumpToManage() {
    window.location.href = "../html/管理员界面.html";
}


function jumpToPag()
{
    let username = document.getElementById("Users").innerHTML;
    let currency = document.getElementById("currency").innerHTML;
    if (username != '请登录')
    {
        window.location.href = "../html/仓库.html?" + "username=" + username + "&currency^" + currency;
    } else {
        alert("请登陆后查看");
    }
}

function jumpToLogin()
{
    window.location.href = "../html/login.html"
}

function jumpToManagerLogin()
{
    window.location.href = "../html/管理员登陆.html"
}

function jumpToUerManage()
{
    window.location.href = "../html/用户管理界面.html"
}
