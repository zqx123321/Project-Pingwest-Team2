<%@ Page Language="C#" AutoEventWireup="true" CodeFile="articleDetail.aspx.cs" Inherits="articleDetail" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/PW.css">
	<link href ="css/public.css" rel = "stylesheet" type = "text/css"/>
	<title>ArticleDetail</title>
</head>
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



     <asp:Repeater ID="Detail" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                 <div class="showWrap" style="margin-top:100px">
		      <div class="showWrapMain">	
			<h1><%#Eval("title")%></h1>
			<div class="showWrapSome">
				<span class="showWrapMainAuthor">lianzilianzi</span>
				<span> <%# Convert.ToDateTime( Eval("time")).ToShortDateString()%></span>
				<span><%#Eval("type") %></span>
				<span class="showReviewNumber"><a href="#reviews">评论(20)</a></span>
				<span>分享(5)</span>
			</div>
			<div class="showWrapBanner">
                <img src='<%#Eval("picture","{0}")%>'/>
			</div>
			<div class="showWrapContent">
				<%#Eval("text") %>
			</div>
			<div class="showWrapLine"></div>
			<div class="showWrapTag clearfix">
				<span>TAG:</span>
				<ul class="clearfix">
					<li>Grab</li>
					<li>Lyft</li>
					<li>Ola</li>
					<li>滴滴快的</li>
					<li>滴滴海外</li>
				</ul>
			</div>
			
			
		</div>
	</div>
               
			<div class="showWrapLine"></div>
			    </ItemTemplate>
        </asp:Repeater> 


	<div class="showMedia">
		<ul>
			<li>
				<img src="image/twiter_gray.png" alt="">
			</li>
			<li>
				<img src="image/weibo_gray.png" alt="">
			</li>
			<li>
				<img src="image/facebook_gray.png" alt="">
			</li>
			<li>
				<img src="image/feed_gray.png" alt="">
			</li>
		</ul>
	</div>


        	<div class="showSidebar" style="margin-top:100px">
		<div class="allActRight">
			<div>
				<ul class="clearfix allActRightUl">
					<li>最近更新</li>
					<li>推荐阅读</li>
				</ul>
				<div class="allActLine"></div>
				<div class="allActNewAct">
					<ul>
                         <asp:Repeater ID="RptArticle" runat="server">
                            <ItemTemplate>
                                <a href='<%# Eval("id", "articleDetail.aspx?ID={0}") %>'>
							        <li>
								        <div class="allActRightPics"><img src='<%#Eval("picture","{0}")%>'></div>
								       <%# Eval("Title") %>
							        </li>
						        </a>
                            </ItemTemplate>
                        </asp:Repeater>
					</ul>
				</div>
				<div class="allActIntroAct">
					<ul>
						<asp:Repeater ID="RptHot" runat="server">
                            <ItemTemplate>
                                <a href='<%# Eval("id", "articleDetail.aspx?ID={0}") %>'>
							        <li>
								        <div class="allActRightPics"><img src='<%#Eval("picture","{0}")%>'></div>
								       <%# Eval("Title") %>
							        </li>
						        </a>
                            </ItemTemplate>
                        </asp:Repeater>
					</ul>
				</div>
			</div>
		</div>
		<div class="clearFloat"></div>
	</div>
		

    <div>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PingwestConnectionString%>" 
        SelectCommand="SELECT * FROM [Article] WHERE ([ID] = @ID)">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="1" Name="ID" QueryStringField="ID"  Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
    
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
	</div>
    </form>
	<script src="js/jquery.min.js"></script>
	<script src="js/PW.js"></script>
</body>
</html>
