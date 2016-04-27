window.onload = function(){
	//活动页面

	//右侧侧边栏的初始化以及Hover后的变化
	$(".allActNewAct").addClass("allActRightLiOn");
	$(".allActRightUl li:first").addClass("allActRightLight");

	$(".allActRightUl li:first").hover(function(){
		$(".allActIntroAct").removeClass("allActRightLiOn");
		$(".allActRightUl li:last").removeClass("allActRightLight");
		$(this).addClass("allActRightLight");
		$(".allActNewAct").addClass("allActRightLiOn");
	});
	$(".allActRightUl li:last").hover(function(){
		$(".allActNewAct").removeClass("allActRightLiOn");
		$(".allActRightUl li:first").removeClass("allActRightLight");
		$(this).addClass("allActRightLight");
		$(".allActIntroAct").addClass("allActRightLiOn");
	});
	//end

	//左侧栏的初始化以及Hover 后的变化
	$(".allActLeft ul li").mouseover(function(){
		$(this).css("border","2px solid #2d9096");
		$(".allActIntroMain h1",this).css("color", "#2d9096");	
	});
	$(".allActLeft ul li").mouseout(function(){
		$(this).css("border","2px solid #eee");
		$(".allActIntroMain h1",this).css("color", "#807B7B");
	});
	//end

	//end



	//内容页面

	//右侧侧边栏
	//end



	//底部评论栏
	// $(".allActNewAct").addClass("allActRightLiOn");
	$(".showWrapReviews ul li:first").addClass("allActRightLight");

	$(".showWrapReviews ul li:first").hover(function(){
		// $(".allActIntroAct").removeClass("allActRightLiOn");
		$(".showWrapReviews ul li:last").removeClass("allActRightLight");
		$(this).addClass("allActRightLight");
		// $(".allActNewAct").addClass("allActRightLiOn");
	});
	$(".showWrapReviews ul li:last").hover(function(){
		// $(".allActNewAct").removeClass("allActRightLiOn");
		$(".showWrapReviews ul li:first").removeClass("allActRightLight");
		$(this).addClass("allActRightLight");
		// $(".allActIntroAct").addClass("allActRightLiOn");
	});
	//end
	

	//end
}