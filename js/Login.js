const getUser = async () =>
{
    const response = await fetch('http://localhost:3000/getUser');
    const data = await response.json();
    login();

    function login()
    { //登陆判断
        let username = document.getElementById('username').value;
        let passwd = document.getElementById('passwd').value;
        if(username==""||passwd=="")
        {
            alert("请输入用户名或密码");
            return;
        }
        let account = data.filter(function (e)
        {
            return e.username == username
        })[0];// 筛选账号返回数组，不存在则返回空数组
        if (!account)
        {
            alert('账户不存在');
            document.getElementById("username").value = "";
            document.getElementById('passwd').value = "";
        } else {
            if (account.username == username && account.passwd == passwd)
            {
                alert('登陆成功');
                window.location.href = "../html/splatoon武器价目表.html?"+"username="+username+"&currency^"+account.currency;
            } else {
                alert('密码错误');
                document.getElementById("username").value = "";
                document.getElementById('passwd').value = "";
            }
        }
    }
}

function jump()
{
    window.location.href = "../html/register.html";
}