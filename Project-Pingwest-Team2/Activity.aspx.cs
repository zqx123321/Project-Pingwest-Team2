using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Activity : System.Web.UI.Page
{
    protected int i = 0;
    string place;
    protected void Page_Load(object sender, EventArgs e)
    {
        place = Convert.ToString(Session["place"]);
        if (!IsPostBack)
        {
            BindRepeaterDatanew();
            BindRepeaterDataTop();
            BindRepeaterDatahot();
            BindRepeaterDatalist();
        }
      
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
    private void BindRepeaterDatanew()
    {
        string sqlSelect = "select top 3 * from Activity order by time";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptArticle.DataSource = dt;
        this.RptArticle.DataBind();
    }
    private void BindRepeaterDatalist()
    {
        if (place == "all")
        {
            string sqlSelect = "select * from Activity order by time";
            DataTable dt = SqlHelper.Select(sqlSelect);
            this.List.DataSource = dt;
            this.List.DataBind();
        }
        else
        {
            string sqlSelect = "select * from Activity where place=N'" + place + "'order by time";
            DataTable dt = SqlHelper.Select(sqlSelect);
            this.List.DataSource = dt;
            this.List.DataBind();

        }
    }
    private void BindRepeaterDataTop()
    {
        string sqlSelect = "select top 3 * from activity order by time";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptTop.DataSource = dt;
        this.RptTop.DataBind();
    }
    private void BindRepeaterDatahot()
    {
        string sqlSelect = "select top 3 * from activity where ishot=1";
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
        Response.Write("<script>alert('退出成功'),location='Activity.aspx'</script>");
    }
}