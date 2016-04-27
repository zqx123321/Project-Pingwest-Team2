using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class activityDisplay : System.Web.UI.Page
{
    protected int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRepeaterDatatime();
            BindRepeaterDatathing();
            BindRepeaterDataTop();

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


    private void BindRepeaterDataALL()
    {
        string sqlSelect = "select * from Activity";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.time.DataSource = dt;
        this.time.DataBind();
        this.thing.DataSource = dt;
        this.thing.DataBind();
    }
    private void BindRepeaterDatanBJ()
    {
        string sqlSelect = "select * from Activity where place=N'北京'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.time.DataSource = dt;
        this.time.DataBind();
        this.thing.DataSource = dt;
        this.thing.DataBind();
    }
    private void BindRepeaterDatanTB()
    {
        string sqlSelect = "select * from Activity where place=N'台北'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.time.DataSource = dt;
        this.time.DataBind();
        this.thing.DataSource = dt;
        this.thing.DataBind();
    }
    private void BindRepeaterDatanGG()
    {
        string sqlSelect = "select * from Activity where place=N'硅谷'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.time.DataSource = dt;
        this.time.DataBind();
        this.thing.DataSource = dt;
        this.thing.DataBind();

    }
    private void BindRepeaterDatanSZ()
    {
        string sqlSelect = "select * from Activity where place=N'深圳'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.time.DataSource = dt;
        this.time.DataBind();
        this.thing.DataSource = dt;
        this.thing.DataBind();
    }
    private void BindRepeaterDatanSH()
    {
        string sqlSelect = "select * from Activity where place=N'上海'";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.time.DataSource = dt;
        this.time.DataBind();
        this.thing.DataSource = dt;
        this.thing.DataBind();
    }
    private void BindRepeaterDatanRe()
    {
        string sqlSelect = "select * from Activity where recommend=1";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.time.DataSource = dt;
        this.time.DataBind();
        this.thing.DataSource = dt;
        this.thing.DataBind();
    }

    protected void ALL_Click(object sender, EventArgs e)
    {
        BindRepeaterDataALL();
    }
    protected void ShangHai_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanSH();
    }
    protected void BeiJing_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanBJ();
    }
    protected void Taibei_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanTB();
    }
    protected void Recommend_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanRe();
    }
    protected void ShenZhen_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanSZ();
    }
    protected void GuiGU_Click(object sender, EventArgs e)
    {
        BindRepeaterDatanGG();
    }


    private void BindRepeaterDataTop()
    {
        string sqlSelect = "select top 3 * from activity order by time";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptTop.DataSource = dt;
        this.RptTop.DataBind();
    }
    private void BindRepeaterDatatime()
    {
        string sqlSelect = "select * from activity order by time";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.time.DataSource = dt;
        this.time.DataBind();
    }
    private void BindRepeaterDatathing()
    {
        string sqlSelect = "select * from activity order by time";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.thing.DataSource = dt;
        this.thing.DataBind();
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
        Response.Write("<script>alert('退出成功'),location='activityDisplay.aspx'</script>");
    }
}