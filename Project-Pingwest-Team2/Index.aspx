<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>
<html lang ="en">
<head>
	<meta charset = "UTF-8">
	 <link href ="css/public.css" rel = "stylesheet" type = "text/css"/>
	 <link href ="css/bootstrap.min.css" rel = "stylesheet" type = "text/css"/>
	 <link href ="css/bootstrap-responsive.min.css" rel = "stylesheet" type = "text/css"/>
	<title>Index</title>
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





    	<div id="myCarousel" class="carousel slide">
        <ol class="carousel-indicators" style="bottom: 20px">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner">
            <asp:Repeater ID="RptTop" runat="server">
            <ItemTemplate>
                <div class=' <%=(i++) <1 ? "item active" : "item" %>'>
                <a href='<%# Eval("id", "articleDetail.aspx?ID={0}") %>'> <img class="img-responsive" src='<%#Eval("picture","{0}")%>'  alt="...">
                <div class="carousel-caption">
              		<h4> <%# Eval("Title") %></h4>
                	<p><%# Eval("summary") %></p>
                </div></a>
            </div>
            </ItemTemplate>
        </asp:Repeater>
        </div>
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
        <a class="carousel-control right" id="ClickMe" href="#myCarousel" data-slide="next">›</a>
    </div>


        <div class="Index_Container">
    	<div>
    		<div class="Index_Container_OptionA "id="Latest">最新</div>
    		<div class="Index_Container_OptionB "id="Hottest">一周热门</div>
    		<div class="clearFloat"></div>
    	</div>
    	<ul id="Latest_list">
             <asp:Repeater ID="RptArticle1" runat="server">
            <ItemTemplate>
                <li>
                <a href='<%# Eval("id", "articleDetail.aspx?ID={0}") %>'><img src='<%#Eval("picture","{0}")%>'></a>
    			<span> <%# Eval("Title") %></span><!--请不要在这里加太长的，我会死   -。-那你就死吧-->
    			<div> <%# Eval("Title") %></div>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    		<li>
    			<div >一段测试视频</div>
    			<span></span>
    			<video width="840" height="340" controls="controls">
  					<source src="./video/movie.mp4" type="video/mp4" />
 					<source src="./video/movie.ogg" type="video/ogg" />
 					<source src="./video/movie.webm" type="video/webm" />
	  				<object data="./video/movie.mp4" width="840" height="340">
	    				<embed src="./video/movie.swf" width="840" height="340" />
	  				</object>
				</video>
    		</li>
            <asp:Repeater ID="RptArticle2" runat="server">
            <ItemTemplate>
                <li>
                <a href='<%# Eval("id", "articleDetail.aspx?ID={0}") %>'><img src='<%#Eval("picture","{0}")%>'></a>
    			<span> <%# Eval("Title") %></span><!--请不要在这里加太长的，我会死   -。-那你就死吧-->
    			<div> <%# Eval("Title") %></div>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    		<li class="clearFloat"></li>
    	</ul>

    	<ul id="Hottest_list">
    		<asp:Repeater ID="RptHot" runat="server">
            <ItemTemplate>
                <li>
                <a href='<%# Eval("id", "articleDetail.aspx?ID={0}") %>'><img src='<%#Eval("picture","{0}")%>'></a>
    			<span> <%# Eval("Title") %></span><!--请不要在这里加太长的，我会死   -。-那你就死吧-->
    			<div> <%# Eval("Title") %></div>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    		<li class="clearFloat"></li>
    	</ul>
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
	<script type="text/javascript"src="js/jquery.min.js"></script>
    <script type="text/javascript"src="js/bootstrap.js"></script>
    <script type="text/javascript">
        document.getElementById("ClickMe").click();
        var SwitchToLatest = document.getElementById("Latest")
        var SwitchToHottest = document.getElementById("Hottest")
        var LatestList = document.getElementById("Latest_list")
        var HottestList = document.getElementById("Hottest_list")
        SwitchToHottest.onclick = function () {
            SwitchToLatest.className = "Index_Container_OptionB";
            SwitchToHottest.className = "Index_Container_OptionA";
            $("#Latest_list").fadeOut("slow", function () {
                $("#Hottest_list").fadeIn("slow");
            });
        }
        SwitchToLatest.onclick = function () {
            SwitchToLatest.className = "Index_Container_OptionA";
            SwitchToHottest.className = "Index_Container_OptionB";
            $("#Hottest_list").fadeOut("slow", function () {
                $("#Latest_list").fadeIn("slow");
            });
        }
    </script>
</html>