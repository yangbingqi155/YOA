<%@ page language="C#" autoeventwireup="true" inherits="Supply_BuyChanPinModify, App_Web_qtgru7wp" %>
<html>
	<head>
		<title>CN-Soft 2009 �������ܰ칫ϵͳ</title>
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
                <a class="hei" href="../Main/MyDesk.aspx">����</a>&nbsp;>>&nbsp;�ɹ�����&nbsp;>>&nbsp;�޸Ķ�����Ʒ��¼��Ϣ
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Button/Submit.jpg"
                        OnClick="ImageButton1_Click" />
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
		�������ƣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtOrderName" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPBuyOrder&LieName=OrderName&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('txtOrderName').value=wName;}"  src="../images/Button/search.gif" />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOrderName" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��Ʒ���ƣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtProductName" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPProduct&LieName=ProductName&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('txtProductName').value=wName;}"  src="../images/Button/search.gif" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProductName"
            ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator></td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��Ʒ���룺
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtProductSerils" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPProduct&LieName=ProductSerils&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('txtProductSerils').value=wName;}"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��Ʒ��Ӧ�̣�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtGongYingShang" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPSupplys&LieName=SupplysName&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('txtGongYingShang').value=wName;}"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��Ʒ���
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtProductType" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPProduct&LieName=ProductType&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('txtProductType').value=wName;}"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��Ʒ�ͺţ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtXingHao" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPProduct&LieName=XingHao&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('txtXingHao').value=wName;}"  src="../images/Button/search.gif" />
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		������λ��
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtDanWei" runat="server" Width="350px"></asp:TextBox>
		<img class="HerCss" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectCondition.aspx?TableName=ERPProduct&LieName=DanWei&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('txtDanWei').value=wName;}"  src="../images/Button/search.gif" /></td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		���ۣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtDanJia" runat="server" Width="350px"></asp:TextBox>
        Ԫ<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDanJia"
            Display="Dynamic" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator><asp:RangeValidator
                ID="RangeValidator2" runat="server" ControlToValidate="txtDanJia" ErrorMessage="*���������дΪ����"
                MaximumValue="100000000" MinimumValue="-100000000" Type="Double"></asp:RangeValidator></td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		������
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtShuLiang" runat="server" Width="350px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtShuLiang"
            Display="Dynamic" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator><asp:RangeValidator
                ID="RangeValidator1" runat="server" ControlToValidate="txtShuLiang" ErrorMessage="*���������дΪ����"
                MaximumValue="100000000" MinimumValue="-100000000" Type="Double"></asp:RangeValidator></td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		�ܼۣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtZongJia" runat="server" Width="350px"></asp:TextBox>
        Ԫ<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtZongJia"
            Display="Dynamic" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator><asp:RangeValidator
                ID="RangeValidator3" runat="server" ControlToValidate="txtZongJia" ErrorMessage="*���������дΪ����"
                MaximumValue="100000000" MinimumValue="-100000000" Type="Double"></asp:RangeValidator></td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		�Ѹ�������
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtYiFuKuan" runat="server" Width="350px"></asp:TextBox>
        Ԫ<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtYiFuKuan"
            Display="Dynamic" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator><asp:RangeValidator
                ID="RangeValidator4" runat="server" ControlToValidate="txtYiFuKuan" ErrorMessage="*���������дΪ����"
                MaximumValue="100000000" MinimumValue="-100000000" Type="Double"></asp:RangeValidator></td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		Ƿ������
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtQianKuanShu" runat="server" Width="350px"></asp:TextBox>
        Ԫ<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtQianKuanShu"
            Display="Dynamic" ErrorMessage="*�������Ϊ��"></asp:RequiredFieldValidator><asp:RangeValidator
                ID="RangeValidator5" runat="server" ControlToValidate="txtQianKuanShu" ErrorMessage="*���������дΪ����"
                MaximumValue="100000000" MinimumValue="-100000000" Type="Double"></asp:RangeValidator></td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
        �Ƿ񽻸���
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>�ѽ���</asp:ListItem>
            <asp:ListItem Selected="True">δ����</asp:ListItem>
        </asp:RadioButtonList><asp:Label ID="Label1" runat="server" Text="0" Visible="False"
            Width="0px"></asp:Label><asp:Label ID="Label4" runat="server" Text="δ����" Visible="False"
                Width="0px"></asp:Label></td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��Ʒ������
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtChanPinMiaoShu" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
	</td></tr><tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��д�ˣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtUserName" runat="server" Width="350px" Enabled="False"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��дʱ�䣺
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtTimeStr" runat="server" Width="350px" Enabled="False"></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #cccccc" align="right">
		��ע˵����
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="txtBackInfo" runat="server" Width="350px" Height="60px" TextMode="MultiLine"></asp:TextBox>
	</td></tr>
</table>
		</div>
	</form>
</body>
</html>