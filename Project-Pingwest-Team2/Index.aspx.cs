using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRepeaterDatanew1();
            BindRepeaterDatanew2();
            BindRepeaterDataTop();
            BindRepeaterDatahot();

            if (Session["name"] == null)
            {
                login.Visible = true;
                logout.Visible = false;

            }
            else
            {
                login.Visible = false;
                logout.Visible = true;
            }
       }
    }
    private void BindRepeaterDatanew1()
    {
        string sqlSelect = "select top 2  * from Article where DateDiff(Day,time,GetDate())<100";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptArticle1.DataSource = dt;
        this.RptArticle1.DataBind();
    }
    private void BindRepeaterDatanew2()
    {
        string sqlSelect = "select * from Article where id>2 and id<6";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptArticle2.DataSource = dt;
        this.RptArticle2.DataBind();
    }
    private void BindRepeaterDataTop()
    {
        string sqlSelect = "select top 3 * from Article order by time";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptTop.DataSource = dt;
        this.RptTop.DataBind();
    }
    private void BindRepeaterDatahot()
    {
        string sqlSelect = "select * from Article where ishot=1";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptHot.DataSource = dt;
        this.RptHot.DataBind();
    }

    protected void BJ_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='Activity.aspx'</script>");
        Session["place"] = BJ.Text;

    }
    protected void SH_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='Activity.aspx'</script>");
        Session["place"] = SH.Text;
    }
    protected void GG_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='Activity.aspx'</script>");
        Session["place"] = GG.Text;
    }
    protected void SZ_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='Activity.aspx'</script>");
        Session["place"] = SZ.Text;
    }
    protected void AL_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='Activity.aspx'</script>");
        Session["place"] = "all";
    }
    protected void login_Click(object sender, EventArgs e)
    {
        Response.Write("<script>location='Login.aspx'</script>");

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["name"] = null;
        Response.Write("<script>alert('退出成功'),location='Index.aspx'</script>");
    }
}