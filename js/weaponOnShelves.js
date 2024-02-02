window.onload = function fresh()
{
    const getWeapon = async () => {
        const response = await fetch('http://localhost:3000/getWeapon');
        const data = await response.json();
        let table = document.getElementById("table");
        for (let i = 0; i < data.length; i++)
        {
            let row = table.insertRow();
            let cell1 = row.insertCell();
            let cell2 = row.insertCell();
            let cell3 = row.insertCell();
            let cell4 = row.insertCell();
            cell1.innerHTML = data[i].wpName;
            cell2.innerHTML = '<img src ="' + data[i].wpApperanceurl + '">';
            if (data[i].isShelves == 0)
            {
                cell3.innerHTML = "未上架";
            } else {
                cell3.innerHTML = "已上架";
            }
           if(cell3.innerHTML=="未上架")
           {
               cell4.innerHTML =
                   '<iframe id="iframe_display" name="iframe_display" style="display: none;"></iframe><!--隐藏-->'+
                   '<form method="post" action="http://localhost:3000/updateWeapon" target="iframe_display">' +
                   '<input type="hidden" name="wpName" value='+data[i].wpName+'>'+
                   '<input type="hidden" name="isShelves" value=1>'+
                   '<input type="submit" class="formstyle2" style="width:100px;height:80px;' +
                   'position:relative;left:-0.5%" value="上架" onclick="jumpToAdd()">' +
                   '</form>';
           }
        }
    }
    getWeapon();
}


