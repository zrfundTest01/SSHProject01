<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
   <title>�鿴�Լ��ķ���������</title>
</head>
<body">
<%@include file="../header.jsp"%>
<%@include file="empheader.jsp"%>
<table width=780 align="center"
	background="<%=ctx%>/images/bodybg.jpg">
<tr>
<td>
<table width=80% border=0 align="center" bgcolor="#CCCCCC">
  <tr bgcolor="#e1e1e1" >
    <td colspan="4" ><div class="mytitle">��ǰ�û���<s:property value="#session.user"/></div></td> 
  </tr>
  <tr bgcolor="#e1e1e1" >
    <td colspan="4" >��ֻ�ܲ鿴�������ķ������򿨣��������飬��������������</td> 
  </tr>
  <tr class="pt9" height="30">
    <td width="29%" bgcolor="#FFFFFF"><b>������</b></td>
    <td width="20%" bgcolor="#FFFFFF"><b>�춯����</b></td>
    <td width="26%" bgcolor="#FFFFFF"><b>��ʱ��</b></td>
    <td width="25%" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
<s:iterator value="unAttend" status="index">  
 	<s:if test="#index.odd == true"> 
         <tr style="background-color:#cccccc" class="pt9" height="24">
    </s:if> 
    <s:else> 
         <tr class="pt9" height="24">
    </s:else> 
    <td bgcolor="#FFFFFF"><s:property value="dutyDay"/></td>
    <td bgcolor="#FFFFFF"><s:property value="unType"/></td>
    <td bgcolor="#FFFFFF"><s:property value="time"/></td>
    <td bgcolor="#FFFFFF"><a href='appChange.action?attid=<s:property value="id"/>'>����ı�</a></td>
</tr>
</s:iterator>
</table>
</TD>
</TR>
</TABLE>
<%@include file="../footer.jsp"%>
</body>
</html>