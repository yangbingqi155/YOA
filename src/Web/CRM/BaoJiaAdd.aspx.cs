﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CRM_BaoJiaAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            this.txtCustomName.Text = Request.QueryString["CustomName"].ToString();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ZWL.BLL.ERPBaoJia model = new ZWL.BLL.ERPBaoJia();
        model.CustomName = this.txtCustomName.Text;
        model.BaoJiaTitle = this.txtBaoJiaTitle.Text;
        model.BaoJiaType = this.txtBaoJiaType.Text;
        model.BaoJiaJinE = this.txtBaoJiaJinE.Text;
        model.BaoJiaContent = this.txtBaoJiaContent.Text;
        model.BaoJiaResult = this.txtBaoJiaResult.Text;
        model.BaoJiaTime = this.txtBaoJiaTime.Text;
        model.BackInfo = this.txtBackInfo.Text;
        model.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        model.TimeStr = DateTime.Now;
        model.IFShare = this.txtIFShare.Text;
        model.CusBakA = this.txtCusBakA.Text;
        model.CusBakB = this.txtCusBakB.Text;
        model.CusBakC = this.txtCusBakC.Text;
        model.CusBakD = this.txtCusBakD.Text;
        model.CusBakE = this.txtCusBakE.Text;

        model.Add();

        //写系统日志
        ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
        MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
        MyRiZhi.DoSomething = "用户添加报价记录(" + this.txtCustomName.Text + ")";
        MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
        MyRiZhi.Add();

        ZWL.Common.MessageBox.ShowAndRedirect(this, "报价信息添加成功！", "MyCustomPrice.aspx?CustomName=" + Request.QueryString["CustomName"].ToString());
    }
}