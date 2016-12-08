
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class DocFile_DangAn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ZWL.Common.PublicMethod.CheckSession();
            DataBindToGridview();           

            //�趨��ťȨ��            
            ImageButton1.Visible = ZWL.Common.PublicMethod.StrIFIn("|A026a|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton5.Visible = ZWL.Common.PublicMethod.StrIFIn("|A026m|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton3.Visible = ZWL.Common.PublicMethod.StrIFIn("|A026d|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
            ImageButton2.Visible = ZWL.Common.PublicMethod.StrIFIn("|A026e|", ZWL.Common.PublicMethod.GetSessionValue("QuanXian"));
        }
    }
    #region  ��ҳ����
    protected void ButtonGo_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (GoPage.Text.Trim().ToString() == "")
            {
                Response.Write("<script language='javascript'>alert('ҳ�벻����Ϊ��!');</script>");
            }
            else if (GoPage.Text.Trim().ToString() == "0" || Convert.ToInt32(GoPage.Text.Trim().ToString()) > GVData.PageCount)
            {
                Response.Write("<script language='javascript'>alert('ҳ�벻��һ����Чֵ!');</script>");
            }
            else if (GoPage.Text.Trim() != "")
            {
                int PageI = Int32.Parse(GoPage.Text.Trim()) - 1;
                if (PageI >= 0 && PageI < (GVData.PageCount))
                {
                    GVData.PageIndex = PageI;
                }
            }

            if (TxtPageSize.Text.Trim().ToString() == "")
            {
                Response.Write("<script language='javascript'>alert('ÿҳ��ʾ����������Ϊ��!');</script>");
            }
            else if (TxtPageSize.Text.Trim().ToString() == "0")
            {
                Response.Write("<script language='javascript'>alert('ÿҳ��ʾ��������һ����Чֵ!');</script>");
            }
            else if (TxtPageSize.Text.Trim() != "")
            {
                try
                {
                    int MyPageSize = int.Parse(TxtPageSize.Text.ToString().Trim());
                    this.GVData.PageSize = MyPageSize;
                }
                catch
                {
                    Response.Write("<script language='javascript'>alert('ÿҳ��ʾ��������һ����Чֵ!');</script>");
                }
            }

            DataBindToGridview();
        }
        catch
        {
            DataBindToGridview();
            Response.Write("<script language='javascript'>alert('��������Ч���֣�');</script>");
        }
    }
    protected void PagerButtonClick(object sender, ImageClickEventArgs e)
    {
        //���Button�Ĳ���ֵ
        string arg = ((ImageButton)sender).CommandName.ToString();
        switch (arg)
        {
            case ("Next"):
                if (this.GVData.PageIndex < (GVData.PageCount - 1))
                    GVData.PageIndex++;
                break;
            case ("Pre"):
                if (GVData.PageIndex > 0)
                    GVData.PageIndex--;
                break;
            case ("Last"):
                try
                {
                    GVData.PageIndex = (GVData.PageCount - 1);
                }
                catch
                {
                    GVData.PageIndex = 0;
                }

                break;
            default:
                //��ҳֵ
                GVData.PageIndex = 0;
                break;
        }
        DataBindToGridview();
    }
    #endregion
    protected void GVData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        ZWL.Common.PublicMethod.GridViewRowDataBound(e);
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        DataBindToGridview();
    }

    public string GetDicNameCondition()
    {
        string ReturnStr = " 0=0 ";
        try
        {
            this.Label1.Text = Request.QueryString["JuanKuName"].ToString();
            if (Request.QueryString["JuanKuName"].ToString().Trim().Length > 0)
            {
                ReturnStr = " JuanKuName='" + Request.QueryString["JuanKuName"].ToString() + "' ";
            }
            else
            {
                ReturnStr = " 0=0 ";
            }
        }
        catch
        { }
        return ReturnStr;
    }

	public void DataBindToGridview()
	{
		ZWL.BLL.ERPDangAn MyModel = new ZWL.BLL.ERPDangAn();
        GVData.DataSource = MyModel.GetList(" IFDel='��' and  FileName Like '%" + this.TextBox1.Text + "%'  and " + GetDicNameCondition() + " order by ID desc");
		GVData.DataBind();
		LabPageSum.Text = Convert.ToString(GVData.PageCount);
		LabCurrentPage.Text = Convert.ToString(((int)GVData.PageIndex + 1));
		this.GoPage.Text = LabCurrentPage.Text.ToString();
	}
	protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
	{
        Response.Redirect("DangAnAdd.aspx?JuanKuName=" + Request.QueryString["JuanKuName"].ToString());
	}
	protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
	{
		string IDlist = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
		if (ZWL.DBUtility.DbHelperSQL.ExecuteSQL("update ERPDangAn set IFDel='��' where ID in (" + IDlist + ")") == -1)
		{
			Response.Write("<script>alert('ɾ��ѡ�м�¼ʱ�������������µ�½�����ԣ�');</script>");
		}
		else
		{
			DataBindToGridview();
			//дϵͳ��־
			ZWL.BLL.ERPRiZhi MyRiZhi = new ZWL.BLL.ERPRiZhi();
			MyRiZhi.UserName = ZWL.Common.PublicMethod.GetSessionValue("UserName");
            MyRiZhi.DoSomething = "�û�ɾ��������Ϣ";
			MyRiZhi.IpStr = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
			MyRiZhi.Add();
		}
	}
	protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
	{
		string IDList = "0";
		for (int i = 0; i < GVData.Rows.Count; i++)
		{
			Label LabVis = (Label)GVData.Rows[i].FindControl("LabVisible");
			IDList = IDList + "," + LabVis.Text.ToString();
		}
		Hashtable MyTable = new Hashtable();
		MyTable.Add("FileName", "�ļ�����");
		MyTable.Add("JuanKuName", "��������");
		MyTable.Add("FileSerils", "�ļ����");
		MyTable.Add("FileTitle", "�ļ�����");
		MyTable.Add("FaWenDanWei", "���ĵ�λ");
		MyTable.Add("FaWenDate", "��������");
		MyTable.Add("MiJi", "�ܼ�");
		MyTable.Add("JingJi", "����");
		MyTable.Add("TypeStr", "�ļ�����");
		MyTable.Add("GongWenType", "�������");
		MyTable.Add("FilePage", "�ļ�ҳ��");
		MyTable.Add("FuJianList", "�����ļ�");
		MyTable.Add("UserName", "¼����");
		MyTable.Add("TimeStr", "¼��ʱ��");
		ZWL.Common.DataToExcel.GridViewToExcel(ZWL.DBUtility.DbHelperSQL.GetDataSet("select  FileName,JuanKuName,FileSerils,FileTitle,FaWenDanWei,FaWenDate,MiJi,JingJi,TypeStr,GongWenType,FilePage,FuJianList,UserName,TimeStr  from ERPDangAn where ID in (" + IDList + ") order by ID desc"), MyTable, "Excel����");
	}
	protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
	{
		string CheckStr = ZWL.Common.PublicMethod.CheckCbx(this.GVData, "CheckSelect", "LabVisible");
		string[] CheckStrArray = CheckStr.Split(',');
        Response.Redirect("DangAnModify.aspx?ID=" + CheckStrArray[0].ToString() + "&JuanKuName=" + Request.QueryString["JuanKuName"].ToString());
	}
}