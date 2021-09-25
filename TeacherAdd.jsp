<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>校园宿舍管理系统</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css" />
    <link href="MiniUI/themes/default/miniui.css" rel="stylesheet" type="text/css" media="all" >
	<link href="MiniUI/themes/jqueryui-cupertino/skin.css" rel="stylesheet" type="text/css" media="all" >
    <link href="MiniUI/themes/icons.css" rel="stylesheet" type="text/css" media="all" >
    <script type="text/javascript" src="MiniUI/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="MiniUI/miniui.js"></script>
</head>
<script language="JavaScript">


function mycheck(){
   if(isNull(form1.Teacher_Username.value)){  
   alert("请输入用户名！"); 
   }else if(isNull(form1.Teacher_Password.value)){
   alert("请输入密码！");
   }else if(isNull(form1.Teacher_Password2.value)){
   alert("请输入重复密码！");
   }else if (document.form1.Teacher_Password.value != document.form1.Teacher_Password2.value) { 
   alert("您两次输入的新密码不一致！请重新输入！"); 
   }else if(isNull(form1.Teacher_Name.value)){
   alert("请输入姓名！");
   }else if(isNull(form1.Teacher_Sex.value)){
   alert("请选择性别！");
   }else if(isNull(form1.Teacher_Tel.value)){
   alert("请输入联系电话！");
   }else{
	   $('#form1').submit();
   }
}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
   
   
</script>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">添加楼宇管理员</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top"><form id="form1" name="form1" method="post" action="TeacherAddSave.action" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>用户名：</td>
                    <td><input name="Teacher_Username" type="text" class="mini-textbox" id="Teacher_Username"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>密码：</td>
                    <td><input name="Teacher_Password" type="password" class="mini-password" id="Teacher_Password"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>重复密码：</td>
                    <td><input name="Teacher_Password2" type="password" class="mini-password" id="Teacher_Password2"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>姓名：</td>
                    <td><input name="Teacher_Name" type="text" class="mini-textbox" id="Teacher_Name"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>性别：</td>
                    <td><select name="Teacher_Sex" id="Teacher_Sex">
                      <option value="">请选择</option>
                      <option value="男">男</option>
                      <option value="女">女</option>
                    </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>联系电话：</td>
                    <td><input name="Teacher_Tel" type="text" class="mini-textbox" id="Teacher_Tel"></td>
                  </tr>
                  <tr>
                    <td height="30">&nbsp;</td>
                    <td>
                    	<a class="mini-button" name="button" id="button" href="javascript:mycheck();">添加楼宇管理员</a>
                      &nbsp;&nbsp;
                      <a class="mini-button" name="button2" id="button2" href="javascript:history.back(-1);">返回上页</a>
                      </td>
                  </tr>
                </table>
              </form></td>
            </tr>
          </table>
</body>
</html>