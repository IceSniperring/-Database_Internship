const getManager = async () =>
{
    const response = await fetch('http://localhost:3000/getManager');
    const data = await response.json();
    console.log(data)
    login();

    function login()
    { //登陆判断
        let adminNo = document.getElementById('adminNo').value;
        let adminPd = document.getElementById('adminPd').value;
        if(adminNo==""||adminPd=="")
        {
            alert("请输入管理员号或密码");
            return;
        }
        let account = data.filter(function (e)
        {
            return e.adminNo == adminNo
        })[0];// 筛选账号返回数组，不存在则返回空数组
        if (!account)
        {
            alert('管理员不存在');
            document.getElementById("adminNo").value = "";
            document.getElementById('adminPd').value = "";
        } else {
            if (account.adminNo == adminNo && account.adminPd == adminPd)
            {
                alert('登陆成功');
                jump();
            } else {
                alert('密码错误');
                document.getElementById("adminNo").value = "";
                document.getElementById('adminPd').value = "";
            }
        }
    }
}

function jump()
{
    window.location.href = "../html/管理员界面.html";
}