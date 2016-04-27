<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html lang ="en">
	<head>
	<meta charset = "UTF-8">
	 <link href ="css/public.css" rel = "stylesheet" type = "text/css"/>
      <link href ="css/bootstrap.min.css" rel = "stylesheet" type = "text/css"/>
	 <link href ="css/bootstrap-responsive.min.css" rel = "stylesheet" type = "text/css"/>
	 <title>Login</title></head>
<body>
    <form id="index" runat="server">
	<div class = "Public_Navigation">
		<img src = "./image/logo.png"/>
		<ul>
			<li class="Public_Navigation_Checked"><a href="Index.aspx">首页</a></li>
			<li><a href="#">资讯</a></li>
			<li><a href="activityDisplay.aspx">活动</a>
				<ul class="Public_Navigation_SecondLevelMenu">
					<li><a href="activityDisplay.aspx">首页</a></li>
						<li><asp:linkbutton ID="BJ" runat="server" OnClick="BJ_Click" Text="北京"></asp:linkbutton></li>
						<li><asp:linkbutton ID="SH" runat="server" OnClick="SH_Click" Text="上海"></asp:linkbutton></li>
						<li><asp:linkbutton ID="GG" runat="server" OnClick="GG_Click" Text="硅谷"></asp:linkbutton></li>
						<li><asp:linkbutton ID="SZ" runat="server" OnClick="SZ_Click" Text="深圳"></asp:linkbutton></li>
						<li><asp:linkbutton ID="AL" runat="server" OnClick="AL_Click" Text="活动一览"></asp:linkbutton></li>
				</ul>
			</li>
			<li><a href="#">专题</a></li>
			<li><a href="#">黑镜</a></li>
			<li><a href="#">物是</a></li>
			<li><a href="#">NO !</a></li>
		</ul>
		<div class="Public_Navigation_LoginAndRegister">
			<%--<button id = "login" onclick="">登录</button>--%>
                <asp:Button ID="login" runat="server" Text="登录" style ="background-color: #2d9096;
                                                                          border: 1px solid white;
                                                                          font: 16px/40px '微软雅黑';
                                                                          margin-left: 15px;
                                                                          margin-right: 15px;
                                                                          width: 120px;
                                                                          height: 44px;
                                                                          color: white;
                                                                          margin-top: 30px;
                                                                          border-radius: 4px;" OnClick="login_Click"/>
             <asp:Button ID="logout" runat="server" Text="退出" style ="background-color: #2d9096;
                                                                          border: 1px solid white;
                                                                          font: 16px/40px '微软雅黑';
                                                                          margin-left: 15px;
                                                                          margin-right: 15px;
                                                                          width: 120px;
                                                                          height: 44px;
                                                                          color: white;
                                                                          margin-top: 30px;
                                                                          border-radius: 4px;" Visible="false"  OnClick="logout_Click"/>
				<%--<button id = "register">注册</button>--%>
                <asp:Button ID="register" runat="server" Text="注册" style ="background-color: white;
                                                                         border: 1px solid #2d9096;
                                                                         font: 16px/40px '微软雅黑';
                                                                         color: #2d9096;
                                                                         margin-left: 15px;
                                                                         margin-right: 15px;
                                                                         width: 120px;
                                                                         height: 44px;
                                                                         margin-top: 30px;
                                                                         border-radius: 4px;     "/>
			<div class = "clearFloat"></div>
		</div>
		<div class = "clearFloat"></div>
	</div>

		<div class="Login_Warper">
            <asp:Repeater ID="picture" runat="server">
                    <ItemTemplate>
			<img src='<%#Eval("picture","{0}")%>' />
                        </ItemTemplate>
                </asp:Repeater>
			<div class="Login_Inner_Warper">
                <asp:Repeater ID="log" runat="server">
                    <ItemTemplate>
                        <div>
					<h4> <%# Eval("Title") %></h4>
					<p> <%# Eval("summary") %></p>
				</div>
                    </ItemTemplate>
                </asp:Repeater>
				
				<div class="Login_Inner_Box">
					<img src="./image/logo.png">
					<div class="Login_Inner_Input">
						<img src="./image/Man.png">
						<asp:TextBox id="username"  runat="server"></asp:TextBox> 
					</div>
					<div class="Login_Inner_Input">
						<img src="./image/Lock.png">
						<asp:TextBox id="password" runat="server"  TextMode="Password"></asp:TextBox>
					</div>
					<div>
						<span>
						<a href="#">忘了密码？</a></span>
						<span>
						<a href="#">新用户注册</a></span>
					</div>
					<%--<button>登录</button>--%>
                    <asp:Button ID="btnlogin" runat="server" OnClick="btnLogin_Click" style="width: 251px;
                                                                                             height: 40px;
                                                                                             color: white;
                                                                                             background-color: rgb(45, 144, 150);
                                                                                             display: block;
                                                                                             border-image-source: initial;
                                                                                             border-image-slice: initial;
                                                                                             border-image-width: initial;
                                                                                             border-image-outset: initial;
                                                                                             border-image-repeat: initial;
                                                                                             margin: 20px auto auto;
                                                                                             font: 20px/40px 微软雅黑;
                                                                                             border: 0px;" Text="登陆" />            
					<div class="Login_Inner_More">
						<span>第三方登录</span>
						<div>
							<div></div>
							<div></div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="Public_Footer">	
		<ul>
			<li>关于
				<ul>
					<li>关于品玩</li>
					<li>版权声明</li>
					<li>关于隐私</li>
					<li>免责声明</li>
					<li>网站地图</li>
					<li>加入品玩</li>
				</ul>
			</li>
			<li>栏目
				<ul>
					<li>品玩资讯</li>
					<li>品玩活动</li>
					<li>NO!</li>
					<li>黑镜</li>
					<li>专题</li>
					<li>物是</li>
				</ul>
			</li>
			<li>商务
				<ul>
					<li>企业服务</li>
					<li>赛事服务</li>
					<li>招聘服务</li>
					<li>图片服务</li>
					<li>培训服务</li>
				</ul>
			</li>
			<li>联系
				<ul>
					<li>在线提问</li>
					<li>联系我们</li>
					<li>品玩微博</li>
					<li>品玩微信</li>
				</ul>
			</li>
			<li>帮助
				<ul>
					<li>品玩规则</li>
					<li>常见问题</li>
				</ul>
			</li>
			<div class="clearFloat"></div>
		</ul>
		<div class="clearFloat"></div>
		<div class="Public_Footer_Remark">
			<span>京ICP备11017824号-4/京ICP证130164号&nbsp;北京市公安局朝阳分局备案编号:110105000501&nbsp;ⓒ2016 PingWest品玩京ICP备14023153</span>
		</div>
	</div></form>
	</body>
</html>