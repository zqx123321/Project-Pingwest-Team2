using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Response.Write("<script>alert('您已成功登录'),location='Index.aspx'</script>");
        }
        if (!IsPostBack)
        {
            BindRepeaterDataTop();
            BindRepeaterDatapicture();
        }
           //// 读取保存的Cookie信息
           // HttpCookie cookies = Request.Cookies["USER_COOKIE"];
           // if (cookies != null)
           // {
           //     //如果Cookie不为空，则将Cookie里面的用户名和密码读取出来赋值给前台的文本框。
           //     txtPassword.Text = cookies["password"];
           //     txtUserName.Text = cookies["username"];
           //     //这里依然把记住密码的选项给选中。
           //     this.checkRemember.Checked=true;
           // }
        //if (!IsPostBack)
        //{
            //if (Request.Cookies["Name"] != null && Request.Cookies["Password"] != null)
            //{
            //    this.txtUserName.Text = Request.Cookies["Name"].Value;
            //    this.txtPassword.Attributes["value"] = Request.Cookies["Password"].Value;
            //}
        //} 
 }

    private void BindRepeaterDataTop()
    {
        string sqlSelect = "select top 1 * from Article";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.log.DataSource = dt;
        this.log.DataBind();
    }
    private void BindRepeaterDatapicture()
    {
        string sqlSelect = "select top 1 * from Article";
        DataTable dt = SqlHelper.Select(sqlSelect);
        this.picture.DataSource = dt;
        this.picture.DataBind();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string name = username.Text;
        string passwordHash = SqlHelper.getHash.getSHA1(password.Text);
        string sql = "select * from [User] where username=N'" + name + "'";
        int result = 0;
        result = SqlHelper.SqlExecute(sql);
        if (result > 0)
        {
            string sql2 = "select * from [User] where username=N'" + name + "'and password='" + passwordHash + "'";
            int result2 = 0;
            result2 = SqlHelper.SqlExecute(sql2);
            if (result2 > 0)
            {
                Session["name"] = name;
                Response.Write("<script>alert('登录成功'),location='Index.aspx'</script>");
                Session["name"] = name;

            }
            else
                Response.Write("<script>alert('密码错误')</script>");
        }
        else
        {
            Response.Write("<script>alert('用户名不存在')</script>");
        }
    }

    //void sendCookie(string name, string passwordHash)
    //{
    //    string ua = HttpContext.Current.Request.UserAgent;
    //    if (ua == null)
    //    {
    //        ua = String.Empty;
    //    }

    //    // 如果用户通过代理服务器访问，获取到的将是代理服务器的ip。此ip不可随意伪造。
    //    string ip = HttpContext.Current.Request.ServerVariables["USER_COOKIE"];
    //    if (ip == null) //我想一般不会有这种情况。
    //    {
    //        ip = String.Empty;
    //    }

    //    //发送Cookie
    //    HttpCookie userInfo = new HttpCookie("User");
    //    userInfo.Values["username"] = name;
    //    userInfo.Values["token"] = getHash.getSHA1(name + passwordHash + ip + ua);
    //    if (checkRemember.Checked)
    //    {
    //        userInfo.Expires = DateTime.Now.AddDays(15); // 15天记住我
    //    }
    //    Response.Cookies.Add(userInfo);
    //}

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