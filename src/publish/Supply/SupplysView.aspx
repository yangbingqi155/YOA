<%@ page language="C#" autoeventwireup="true" inherits="Supply_SupplysView, App_Web_qtgru7wp" %>
<html>
	<head>
		<title>��ҵOA�ۺϹ���ƽ̨</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
  <script language="javascript">
  function PrintTable()
    {
        document.getElementById("PrintHide") .style.visibility="hidden"    
        print();
        document.getElementById("PrintHide") .style.visibility="visible"    
    }
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
     <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
            <tr>
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">����</a>&nbsp;>>&nbsp;��Ӧ�̹���&nbsp;>>&nbsp;�鿴��Ӧ����Ϣ
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                    <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
            <tr>
            <td height="3px" colspan="2" style="background-color: #ffffff"></td>
        </tr>
        </table>
<table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��Ӧ�����ƣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblSupplysName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��Ӧ�̱��룺
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblSerils" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��Ӧ�̼�ƣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblJianCheng" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		�̶��绰��
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblDianHua" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		�ֻ����룺
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblMobTel" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		������룺
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblChuanZhen" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��ַ��
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblURLStr" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		�����ʼ���
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblEmailStr" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		������
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblDiQu" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		�������룺
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblYouBian" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��ַ��
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblAddress" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		�����У�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblKaiHuHang" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		�ʺţ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblZhangHao" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��ע˵����
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblBackInfo" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��¼�ˣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblUserName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��¼ʱ�䣺
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblTimeStr" runat="server"></asp:Label>
	</td></tr>
</table>

<hr style="height:1px; color: #003333;">
    &nbsp;&nbsp;
    <img src="../images/TreeImages/hrms.gif" /><a target="RMid" href="SupplysLink.aspx?GongYingShang=<%=GongYingShang %>">��Ӧ����ϵ��</a>&nbsp;&nbsp;
    
    <hr style="height:1px; color: #003333;">
    <IFRAME name="RMid" frameBorder="0" marginHeight="0" marginWidth="0" width="100%" height="500"
													BORDERCOLOR="#ffffFF"  src="SupplysLink.aspx?GongYingShang=<%=GongYingShang %>" border="0"></IFRAME>


		</div>
	</form>
</body>
</html>