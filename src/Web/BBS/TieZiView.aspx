﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TieZiView.aspx.cs" Inherits="BBS_TieZiView" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<html>
	<head>
		<title>政务OA</title>
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
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;论坛BBS&nbsp;>>&nbsp;查看帖子
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    &nbsp;<img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                    <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
            <tr>
            <td height="3px" colspan="2" style="background-color: #ffffff"></td>
        </tr>
        </table>
        
        <table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">            
        <tr>
        <td style="padding-left: 5px; background-color: #EEF7FC;height:25px;" >
            &nbsp;
           <img src="../images/JianTou.gif" /> <asp:Label ID="Label4" runat="server" Font-Bold="True"></asp:Label></td>
        </tr>            
        </table>
        <table><tr><td></td></tr></table>
    <table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">            
        <tr>
            <td align="center" valign="top" style="width: 170px; height: 25px; background-color: #ffffff"><br><img src="../images/Button/Man.gif" align="absMiddle" />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="12px" ForeColor="#0000C0"></asp:Label><br></td>
            <td style="padding-left: 5px; background-color: #ffffff" rowspan="2" valign="top">
                <asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff"><br>
                <asp:Label ID="Label2" runat="server" Font-Names="宋体"></asp:Label><br></td>
        </tr>
        </table></div>
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <hr style="height:1px; color:#004210">
        
        <table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">
            <tr>
                <td align="right" valign="top"  style="width: 170px; height: 25px; background-color: #ffffff">
                    回复帖子：</td>
                <td style="padding-left: 5px; background-color: #ffffff" valign="top">
                    <CKEditor:CKEditorControl ID="TxtContent" BasePath="~/ckeditor" runat="server" UIColor="#BFEE62" Language="zh-cn" EnterMode="BR"></CKEditor:CKEditorControl>
                    <br />
                    <asp:Button ID="Button1" runat="server" Font-Bold="False" OnClick="Button1_Click"
                        Text="回复信息" /></td>
            </tr>
        </table>
        
    </form>
</body>
</html>