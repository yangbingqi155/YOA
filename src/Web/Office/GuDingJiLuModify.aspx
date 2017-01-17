<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuDingJiLuModify.aspx.cs" Inherits="Office_GuDingJiLuModify" %>
<html>
	<head>
		<title>政务OA</title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        <link href="../Style/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jQuery/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/jquery-ui/jquery-ui.min.js"></script>
    <script src="../Scripts/Public.js"></script>
        <script src="../My97DatePicker/WdatePicker.js"></script>
    <link href="../My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
        <link href="../bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap-3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var dialog;
        function selectConditionThingNameCallback(returndata) {
            $('#<%=txtGDName.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
        function selectConditionThingCategoryCallback(returndata) {
            $('#<%=txtZJType.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
       
        function selectConditionThingDatetimeCallback(returndata) {
            $('#<%=txtZJDate.ClientID%>').val(returndata);
            if (dialog != null) {
                dialog.dialog("close");
            }
        }
    </script>
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
               <td colspan="2" valign="middle" style="height: 30px;">
                        <ol class="breadcrumb">
                            <li><a href="../Main/MyDesk.aspx">桌面</a></li>
                            <li>固定资产</li>
                            <li class="active">修改折旧记录信息</li>
                        </ol>

                    </td>
                       </tr>
         <tr>
                <td colspan="2" class="filter_box">
                        <div class="form-group">
                            <asp:Button ID="ImageButton1" Text="提交" CssClass="btn btn-primary" runat="server" OnClick="ImageButton1_Click" />
                            &nbsp;&nbsp;
                            <button class="btn btn-default" onclick="javascript:window.history.go(-1)">返回</button>&nbsp;
                        </div>
                    </td>
            </tr>
        </table>
<table style="width: 100%" class="table">
	<tr>
	<td style="width: 170px;" align="right">
		资产名称：
	</td>
	<td>
		<asp:TextBox id="txtGDName" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDing&LieName=GDName&callbackFun=selectConditionThingNameCallback',350,400)"  src="../images/Button/search.gif" />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGDName" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		折旧类别：
	</td>
	<td>
		<asp:TextBox id="txtZJType" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="openDialog('../Main/SelectCondition.aspx?TableName=ERPGuDingJiLu&LieName=ZJType&callbackFun=selectConditionThingCategoryCallback',350,400)"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		折旧日期：
	</td>
	<td>
		<asp:TextBox id="txtZJDate" runat="server" Width="350px" CssClass="Wdate" onclick="WdatePicker()"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		折旧金额：
	</td>
	<td>
		<asp:TextBox id="txtZJJinE" runat="server" Width="350px"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		录入人：
	</td>
	<td>
		<asp:TextBox id="txtUserName" runat="server" Width="350px" Enabled="False"></asp:TextBox></td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		录入时间：
	</td>
	<td>
		<asp:TextBox id="txtTimeStr" runat="server" Width="350px" Enabled="False"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px;" align="right">
		备注说明：
	</td>
	<td>
		<asp:TextBox id="txtBackInfo" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>
