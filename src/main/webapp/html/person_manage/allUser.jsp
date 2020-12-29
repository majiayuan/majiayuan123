<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: 98247
  Date: 2020/12/20
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>部门管理</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
    <link href="css/style_.css" rel="stylesheet" type="text/css">

    <script>
        function moye() {
            document.form1.action="${pageContext.request.contextPath}/user/findCurrentPage?pageNum=${page.totalPages}"
            document.form1.submit();
        }
        function shouye() {
            document.form1.action="${pageContext.request.contextPath}/user/findCurrentPage?pageNum=1"
            document.form1.submit();
        }
        function xiayiye() {
            document.form1.action="${pageContext.request.contextPath}/user/findCurrentPage?pageNum=${requestScope.page.pageNum+1}"
            document.form1.submit();
        }
        function shangyiye()
        {
            document.form1.action="${pageContext.request.contextPath}/user/findCurrentPage?pageNum=${requestScope.page.pageNum-1}"
            document.form1.submit();
        }
        function chaxun()
        {
            document.form1.action="${pageContext.request.contextPath}/user/findCurrentPage"
            document.form1.submit();
        }
        function shanchu()
        {
            var xg = confirm("是否确定删除这些员工？");
            if(xg == true)
            {
                document.form1.action="${pageContext.request.contextPath}/user/deleteUserById"
                document.form1.submit();
                alert("确定删除！！！");
            }
            else
            {
                alert("取消删除！！！");
            }
        }

        function selectAllByChk(chk,checkbox) {
            var size = checkbox.length;
            if(size == null)
                checkbox.checked =chk.checked;
            else{
                for (i = 0; i < checkbox.length; i++) {
                    checkbox[i].checked =chk.checked;
                }
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
                    <td height="30" valign="middle" background="../../images/bg_03.gif"><div align="left"><font color="#FFFFFF">单位员工管理</font></div></td>
                </tr>
            </table></td>
        </tr>
    </table>
    <form  method="post" name="form1">
        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="table01">
            <tr>
                <td colspan="4" class="td_02"><SPAN class=td_title>员工查询</SPAN></td>
            </tr>
            <tr>
                <td width="10%" class="td_02">员工姓名</td>
                <td width="40%" class="td_02"><input name="userName1" type="text" class="input" value="${user1.userName1}" style="width:95% "></td>
                <td width="10%" class="td_02">所属部门</td>
                <td width="40%" class="td_02">
                    <select name="department1"  style="width:95% ">
                    <%--<c:if test="${user1!=null}">
                        <option value="${user1.department1}">${user1.department1}</option>
                    </c:if>--%>
                    <option value="">--请选择--</option>
                    <c:forEach items="${listDepartment}" var="listDepartment" >
                        <option value="${listDepartment}" <c:if test="${user1.department1==listDepartment}"> selected</c:if>  >${listDepartment}</option>
                    </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="td_02">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务</td>
                <td class="td_02"><select name="duty1" style="width:95% ">
                    <option value="" selected>--请选择--</option>
                    <c:forEach items="${listDuty}" var="listDuty" >
                        <option value="${listDuty}" <c:if test="${user1.duty1==listDuty}"> selected</c:if>  >${listDuty}</option>
                    </c:forEach>
                </select></td>
                <td class="td_02">&nbsp;</td>
                <td class="td_02"><input name="Submit2" type="reset" class="buttonface02" value=" 查  询 " onclick="chaxun()"></td>
            </tr>
        </table><br>
        <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td class="td_page"><div align="right">
                    <input name="Submit2" type="button" class="buttonface02" value="新增员工" onClick="location.href='${pageContext.request.contextPath}/user/toAddUser'">
                    <input name="Submit2" type="button" class="buttonface02" value="删除选中的员工" onClick="shanchu()">

                </div></td>
            </tr>
        </table>
        <table width="95%"  border="0" cellpadding="0" cellspacing="0" class="table02" align="center">
            <tr>
                <td height="30" align="right"><div align="left"></div>
                    <img src="../../images/1.gif" width="4" height="5" align="absmiddle"> <button onclick="shouye()">首页</button>　





                    <c:if test="${requestScope.page.pageNum==1}">
                        <%--如果没有上一页 让上一页消失--%>
                        <img src="../../images/2.gif" width="3" height="5" align="absmiddle"> <button  onclick="return false;">上一页</button>
                    </c:if>
                    <c:if test="${requestScope.page.pageNum!=1}">
                        <img src="../../images/2.gif" width="3" height="5" align="absmiddle"> <button onclick="shangyiye()">上一页</button>
                    </c:if>
                    <c:if test="${requestScope.page.pageNum == requestScope.page.totalPages}">
                        <%--如果没有下一页 就消失--%>
                        <img src="../../images/2-2.gif" width="3" height="5" align="absmiddle"> <button  onclick="return false;">下一页</button>
                    </c:if>
                    <c:if test="${requestScope.page.pageNum != requestScope.page.totalPages}">
                        <img src="../../images/2-2.gif" width="3" height="5" align="absmiddle"> <button onclick="xiayiye()" >下一页</button>
                    </c:if>

                   <%-- <img src="../../images/2.gif" width="3" height="5" align="absmiddle"> 上一页　
                    <img src="../../images/2-2.gif" width="3" height="5" align="absmiddle"> <a href="${pageContext.request.contextPath}/user/findCurrentPage?pageNum=${pageNum+1}">下一页</a>　
                    --%>



                    <img src="../../images/3.gif" width="4" height="5" align="absmiddle"> <button onclick="moye()">末页</button> 　　共 ${page.totalPages} 页 ${page.totalRows} 条记录</td>
            </tr>
        </table>
        <table width="95%" border="0" align="center" cellpadding="2" cellspacing="0" class="table01">
            <tr>
                <td width="5%" class="td_top"><input name="chk" style="display:none" type="checkbox" id="chk" onClick="selectAllByChk(chk,checkbox)" value="checkbox0"></td>
                <td width="10%" class="td_top">用户姓名</td>
                <td width="11%" class="td_top">所属部门</td>
                <td width="13%" class="td_top">职 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务</td>
                <td width="14%" class="td_top">生日</td>
                <td width="21%" class="td_top">移动电话</td>
                <td width="13%" class="td_top">办公电话</td>
                <td width="13%" class="td_top">修改员工</td>
            </tr>

            <c:forEach items="${page.datas}" var="data" >
                <tr>
                    <td class="td_02"><input type="checkbox" name="chooseId" value="${data.id}"></td>
                    <td class="td_02"><font color="#000000"><a href="${pageContext.request.contextPath}/user/userDetail?id=${data.id}">${data.userName}</a></font></td>
                    <td class="td_02">${data.department}</td>
                    <td class="td_02">${data.duty}</td>
                    <td class="td_02">${data.userTime}</td>
                    <td class="td_02">${data.mobile_telephone_num}</td>
                    <td class="td_02">${data.work_telephone_num}</td>
                    <td class="td_02"><a href="${pageContext.request.contextPath}/user/toUpdataUser?id=${data.id}">修 改</a></td>
                </tr>
            </c:forEach>
            <%--<tr>
                <td class="td_02"><input type="checkbox" name="checkbox" value="checkbox"></td>
                <td class="td_02"><font color="#000000"><a href="&#21592;&#24037;&#31649;&#29702;.htm">张三</a></font></td>
                <td class="td_02">技术部</td>
                <td class="td_02">普通员工</td>
                <td class="td_02">3月5日</td>
                <td class="td_02">0730-13974033958</td>
                <td class="td_02">0730-3733587</td>
                <td class="td_02"><a href="员工修改.htm">修 改</a></td>
            </tr>
            <tr>
                <td class="td_02"><input type="checkbox" name="checkbox" value="checkbox"></td>
                <td class="td_02"><font color="#000000"><a href="&#21592;&#24037;&#31649;&#29702;.htm">王五</a></font></td>
                <td class="td_02">人事部</td>
                <td class="td_02">普通员工</td>
                <td class="td_02">3月6日</td>
                <td class="td_02">0730-13974033958</td>
                <td class="td_02">0730-3733587</td>
                <td class="td_02"><a href="员工修改.htm">修 改</a></td>
            </tr>
            <tr>
                <td height="25" class="td_02"><input type="checkbox" name="checkbox" value="checkbox"></td>
                <td class="td_02"><font color="#000000"><a href="&#21592;&#24037;&#31649;&#29702;.htm">李四</a></font></td>
                <td class="td_02">技术部</td>
                <td class="td_02">技术部经理</td>
                <td class="td_02">3月5日</td>
                <td class="td_02">0730-13874033956</td>
                <td class="td_02">0730-3727893</td>
                <td class="td_02"><a href="员工修改.htm">修 改</a></td>
            </tr>
            <tr>
                <td class="td_02"><input type="checkbox" name="checkbox" value="checkbox"></td>
                <td class="td_02"><font color="#000000"><a href="&#21592;&#24037;&#31649;&#29702;.htm">张三</a></font></td>
                <td class="td_02">财务部</td>
                <td class="td_02">普通员工</td>
                <td class="td_02">3月5日</td>
                <td class="td_02">0730-13974033958</td>
                <td class="td_02">0730-3733587</td>
                <td class="td_02"><a href="员工修改.htm">修 改</a></td>
            </tr>
            <tr>
                <td height="25" class="td_02"><input type="checkbox" name="checkbox" value="checkbox"></td>
                <td class="td_02"><font color="#000000"><a href="&#21592;&#24037;&#31649;&#29702;.htm">马六</a></font></td>
                <td class="td_02">人事部</td>
                <td class="td_02">人事部经理</td>
                <td class="td_02"><FONT style="FONT-SIZE: 10pt" color=#000000>3月5日</FONT></td>
                <td class="td_02">0730-13874033956</td>
                <td class="td_02">0730-3727893</td>
                <td class="td_02"><a href="员工修改.htm">修 改</a></td>
            </tr>
            <tr>
                <td height="25" class="td_02"><input type="checkbox" name="checkbox" value="checkbox"></td>
                <td class="td_02"><font color="#000000"><a href="&#21592;&#24037;&#31649;&#29702;.htm">赵七</a></font></td>
                <td class="td_02">财务部</td>
                <td class="td_02">财务部经理</td>
                <td class="td_02"><FONT style="FONT-SIZE: 10pt" color=#000000>3月5日</FONT></td>
                <td class="td_02">0730-13874033956</td>
                <td class="td_02">0730-3727893</td>
                <td class="td_02"><a href="员工修改.htm">修 改</a></td>
            </tr>--%>
        </table>
        <p>&nbsp;</p>
    </form>
</center>
</body>
</html>

