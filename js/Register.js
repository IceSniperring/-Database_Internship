const getUser = async () =>
{
    const response = await fetch('http://localhost:3000/getUser');
    const data = await response.json();
    register();

    function register()
    { //注册判断
        let username = document.getElementById('username').value;
        let passwd1 = document.getElementById('passwd1').value;
        let passwd2 = document.getElementById('passwd2').value;
        let label = true; //标志位
        if(username==""||passwd1==""||passwd2=="")
        {
            alert("请输入用户名或密码");
            return;
        }
        for (let i = 0; i < data.length; i++)
        {
            if (data[i].username == username)
            {
                label = false;
                alert('用户名已存在,请重新输入');
                break;
            }
        }
        if (label)
        {
            if (passwd1 != passwd2)
            {
                alert('两次输入的密码不一致');
            } else {
                alert('注册成功,请重新登录');
                jump();
            }
        }
    }
}
function jump()
{
    window.location.href = "../html/login.html";
}