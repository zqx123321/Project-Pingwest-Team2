using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class activityDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRepeaterDatanew();
            BindRepeaterDatahot();
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
    //protected void Detail_ItemCommand(object source, RepeaterCommandEventArgs e)
    //{

    //}
    private void BindRepeaterDatanew()
    {
        string sqlSelect = "select top 3 * from Activity order by time";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.RptArticle.DataSource = dt;
        this.RptArticle.DataBind();
    }
    private void BindRepeaterDatahot()
    {
        string sqlSelect = "select top 3 * from Activity where ishot=1";
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
        Response.Write("<script>alert('退出成功'),location='activityDetail.aspx'</script>");
    }
}