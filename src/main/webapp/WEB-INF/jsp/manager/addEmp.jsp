<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>������Ա��</title>
<s:head/>
</head>
<body>
<%@include file="../header.jsp"%> 
<%@include file="mgrheader.jsp"%> 
<table width=780 align="center"
	background="<%=ctx%>/images/bodybg.jpg">
<tr>
<td>
����������Ա�������ϣ�<br>
<s:if test="tip!=null">
<div class="error">
    <s:property value="tip"/>
</div>
</s:if>
<s:form action="processAdd">
	<s:textfield name="empName" label="Ա���û���"/>
	<s:textfield name="empPass" label="Ա������"/>
	<s:textfield name="empSal" label="Ա����н"/>
	<s:token/>
	<tr><td colspan="2">
	<s:submit value="�����Ա��" theme="simple"/><s:reset  theme="simple" value="��������"/>
	</td></tr>
</s:form>
</td>
</tr>
</table>
<%@include file="../footer.jsp"%> 
</body>
</html>
