
<!DOCTYPE html>
<html lang="zh-cn" class="wh-gray-bg theme-gray size-big ">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title> 
    <link rel="stylesheet" href="dist/css/template_system/template.reset.css" />
    <link rel="stylesheet" href="dist/css/template_system/template.fa.css" />
    <link rel="stylesheet" href="dist/css/template_default/template.portal.css" />
    <link rel="stylesheet" href="dist/css/template_default/template.style.css" /> 
    <link rel="stylesheet" href="dist/css/template_default/template.portal.size.css" />
    <link rel="stylesheet" href="dist/css/template_default/themes/2016/template.theme.before.css" />  
    <link rel="stylesheet" href="dist/css/template_default/themes/2016/template.theme.after.css" />  
      
     <script type="text/javascript" src="scripts/plugins/jquery/jquery.min.js" ></script>
    <script type="text/javascript" src="scripts/plugins/superslide/jquery.SuperSlide.2.1.1.js" ></script>
    <script type="text/javascript" src="scripts/plugins/flexslide/jquery.flexslider.js" ></script>
    <script type="text/javascript" src="scripts/plugins/foucs/jquery.foucs.js" ></script>
    <script type="text/javascript" src="scripts/plugins/highcharts/jquery.highcharts.js"></script>
    <script type="text/javascript" src="scripts/plugins/highcharts/jquery.highcharts-more.js"></script>
</head>
<body>

    <div class="wh-my-schedule">
    <input type="hidden"  value="<%=portletSettingId%>" id="portletSettingId">
        <div class="wh-schedule-time-box" id="wh-schedule-time-box">
         <ul class="wh-schedule-time-slide clearfix" id="wh-schedule-time-slide">
                <li>2015年8月</li>
                <li>2015年9月</li>
                <li>2015年10月</li>

                
         </ul>
        </div>
        
        <div class="wh-my-s-date-list" id="wh-my-s-date-list">
            <ul class="wh-my-s-date-li clearfix" id="wh-my-s-date-li">

			 	<li  onclick="changeday1(this)" data="<%=daynum2%>">1</li>
				  <li   onclick="changeday1(this)" data="<%=daynum2%>">2<i class="wh-portal-schedule-red" >日程</i></li>

            </ul>
        </div>
        

     </div>

	<div class="wh-portal-i-item clearfix">
                    <a href="javascript:void(0)" onclick="gotoPortletURL(this, {lefturl:'<%=ivo.getLink()%>&fromdesktop=1&portletSettingId=<%=portletSettingId%>&cunnUserId=<%=session.getAttribute("userId")%>', righturl:'', winname:'', wintype:'1'});">
                        <i class="fa fa-file-o"></i>
                        <span title="<%=ivo.getTitle()%>"><%=title%></span>
                    </a>
                    <em class="wh-pending-em"><%=ivo.getTime()%></em>
      </div>


<script>
    $(function () {
        //我的日程
        /*----------我的日程 年月滚动----------*/
        $("#wh-schedule-time-box").flexslider({
            selector:"#wh-schedule-time-slide > li",
            animation: "slide",
            animationLoop: false,
            itemMargin: 7,
            directionNav: true,
            controlNav:false,
            slideshow: false
            // pausePlay: true
        });
        /*----------我的日程 日滚动----------*/
        $("#wh-my-s-date-list").flexslider({
            selector:"#wh-my-s-date-li > li",
            animation: "slide",
            animationLoop: false,
            itemWidth: 85,
            itemMargin: 0,
            minItems: 2,
            maxItems: 7,
            directionNav: true,
            controlNav:false,
            asNavFor: '#wh-my-s-meeting'
            // pausePlay: true
        });
        /*----------我的日程 点击某一日关联事务滚动----------*/
        $("#wh-my-s-meeting").flexslider({
	
            selector:"#wh-my-s-meeting-ul > li",
            animation: "slide",
            controlNav: false,
            directionNav: false,
            animationLoop: false,
            slideshow: false,
            sync: "#wh-my-s-date-list"
            // pausePlay: true
        });
        /*----------我的日程 具体事务滚动----------*/
        $('#wh-my-meeting-day-slide').flexslider({
		
            animation: "slide",
            animationSpeed: 400,
            animationLoop: false,
            itemWidth: 172,
            itemMargin: 20,
            controlNav: false,
            slideshow: false,
			
        });
    
	 $(".sche-no").click(function(){
            $(this).removeClass("flex-active-slide");
        })    
	
	
	  var portletSettingId = '<%=portletSettingId%>';
	  var currentDate = '<%=currentDate%>';
	    var currentDateday = '<%=currentDateday%>';
	 
  //绑定的点击事件，需要传入时间 和上月，下月。
	  $("#wh-schedule-time-box-<%=portletSettingId%> .flex-next").click(function(){
			mycanlendar.refresh($('#content_portletSettingId_'+portletSettingId), {portletSettingId:portletSettingId, type:'mycanlendar', isNext:"truemonth", currentDateday : currentDateday});
		
			
		});
	
	 $("#wh-schedule-time-box .flex-prev ").click(function(){
		  mycanlendar.refresh($('#content_portletSettingId_'+portletSettingId), {portletSettingId:portletSettingId, type:'mycanlendar', isPrev:"truemonth" ,currentDateday : currentDateday});
		  });
	  
	  //绑定的点击事件，需要传入时间 和上周，下周。
	  
	  $("#wh-my-s-date-list-<%=portletSettingId%> .flex-next").click(function(){
		
		  mycanlendar.refresh($('#content_portletSettingId_'+portletSettingId), {portletSettingId:portletSettingId, type:'mycanlendar', isNext:'trueday', currentDateday : currentDateday});
	});
	 $("#wh-my-s-date-list-<%=portletSettingId%> .flex-prev ").click(function(){
	
		  mycanlendar.refresh($('#content_portletSettingId_'+portletSettingId), {portletSettingId:portletSettingId, type:'mycanlendar', isPrev:'trueday' ,currentDateday : currentDateday});
	});
});
 
 

function changeday1(obj){
  	var portletSettingId = $('#portletSettingId').val();
	var day = $(obj).attr("data");
	
	if(day<10){day ="0"+day;}
	var currentDateday = '<%=currentDateday%>';
	var strdata3 = '<%=strdata3%>';
	//whir_alert(strdata3);
	if(strdata3!=null&&""!=strdata3){
		var dataStr = strdata3.substring(0,7)+"-"+day;
		//alert(strdata3);
		//alert(dataStr);
		if(strdata3>dataStr){
			var monthstr=Number(strdata3.substring(5,7));
			monthstr = monthstr+1;//月份+1
			var yearstr=Number(strdata3.substring(0,4));
			if(monthstr<10){
				dataStr = yearstr+'-0'+monthstr+"-"+day;
			}
			if(monthstr>9&&monthstr<13){
				dataStr = yearstr+'-'+monthstr+"-"+day;
			}
			 if(monthstr>12){
			 	yearstr = yearstr+1;
				monthstr = monthstr-12;
				dataStr = yearstr+'-0'+monthstr+"-"+day;
			}
		}
	
		   mycanlendar.refresh($('#content_portletSettingId_'+portletSettingId), {portletSettingId:portletSettingId, type:'mycanlendar' ,dataStr : dataStr,currentDateday : dataStr});
		 //  whir_alert(dataStr);
	}
}
</script>
