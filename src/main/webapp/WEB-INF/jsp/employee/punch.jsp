<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���Ӵ�</title>
</head>
<body>
<%@include file="../header.jsp"%> 
<%@include file="empheader.jsp"%> 
<table width=780 align="center"
	background="<%=ctx%>/images/bodybg.jpg">
  <tr>
    <td colspan="3"><br><br><div class="mytitle">���Ӵ�ϵͳ</div></td>
  </tr>
  <tr>
    <td colspan="3">
	    <br><br><br>
<!-- ��punchIsValidΪ1��3ʱ�����ϰ�� -->
<s:if test="punchIsValid==1 
	|| punchIsValid==3">
<s:form action="employeeCome">
	<s:submit key="come.punch"/>
</s:form>
</s:if>
		<br><br><br>
	</td>
  </tr>
  <tr>
    <td colspan="3">
<!-- ��punchIsValidΪ2��3ʱ�����°�� -->	
<s:if test="punchIsValid==2
	|| punchIsValid==3">
<s:form action="employeeLeave">
	<s:hidden value="leave"/>
	<s:submit  key="leave.punch"/>
</s:form>
</s:if>
		<br>
	</td>
  </tr>
</TABLE>
<%@include file="../footer.jsp"%> 
</body>
</html>
