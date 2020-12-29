<%--
  Created by IntelliJ IDEA.
  User: 98247
  Date: 2020/12/22
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工详细信息</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
    <script>
        function windowOpen(theURL,winName,features,width,hight,scrollbars,top,left)
        {
            var parameter="top="+top+",left="+left+",width="+width+",height="+hight;
            if(scrollbars=="no")
            {parameter+=",scrollbars=no";}
            else
            {parameter+=",scrollbars=yes";}
            window.open(theURL,winName,parameter);
        }

        function shanchu()
        {
            var xg = confirm("是否确定删除此员工？");
            if(xg == true)
            {
                alert("确定删除！！！");
            }
            else
            {
                alert("取消删除！！！");
            }
        }
    </script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td height="25" align="center" valign="bottom" class="td06"> <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="2%" valign="middle" background="../../images/bg_03.gif">&nbsp;</td>
                    <td width="2%" valign="middle" background="../../images/bg_03.gif"><img src="../../images/main_28.gif" width="9" height="9" align="absmiddle"></td>
                    <td height="30" valign="middle" background="../../images/bg_03.gif"><div align="left"><font color="#FFFFFF">员工详细信息</font></div></td>
                </tr>
            </table></td>
        </tr>
    </table>
    <form name="form1" method="post" action="">
        <table width="95%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td height="30" colspan="2"><div align="right"><a href="员工添加.htm">新增员工</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="员工修改.htm">修改员工</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a style="color:#0066CC " onClick="shanchu()" href="部门管理.htm">删除员工</a>&nbsp;</div></td>
            </tr>
            <tr>
                <td width="20%" height="30" class="td_form01">姓名</td>
                <td width="498" class="td_form02">${user.userName}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01">性 别</td>
                <td class="td_form02">${user.sex} </td>
            </tr>
            <tr>
                <td height="30" class="td_form01">所属部门</td>
                <td class="td_form02">${user.department}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01">职 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务</td>
                <td class="td_form02">${user.duty}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01">直属上级</td>
                <td class="td_form02">人事部经理</td>
            </tr>
            <tr>
                <td height="30" class="td_form01">内部邮件</td>
                <td class="td_form02">${user.email}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01">外部邮件</td>
                <td class="td_form02">${user.email}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01">移动电话</td>
                <td class="td_form02">${user.mobile_telephone_num}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01"><FONT color=#000000>家庭电话</FONT></td>
                <td class="td_form02">${user.family_telephone_num}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01"><FONT color=#000000>办公电话</FONT></td>
                <td class="td_form02">${user.work_telephone_num}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01"><FONT color=#000000>传真号码</FONT></td>
                <td class="td_form02">${user.fax_num}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01">MSN</td>
                <td class="td_form02">${user.MSN}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01">生日</td>
                <td class="td_form02">${user.birthday}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01">个人主页</td>
                <td class="td_form02">${user.personal_page}</td>
            </tr>
            <tr>
                <td height="30" class="td_form01"> 通讯地址 </td>
                <td class="td_form02">${user.address} </td>
            </tr>
            <tr>
                <td class="td_form01">备注</td>
                <td class="td_form02">${user.remarks}</td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
