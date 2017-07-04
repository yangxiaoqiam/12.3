修改纪要（相对于11.3+）
===================

[README](README.md) / [修改日志](CHANGELOG.md) / [修改纪要](CHANGE.md) / [快速上手](QUICKSTART.md) / [选择BootStrap](CHOSE.md)

-------------------

Note: 自11.3和11.4发布之后，后续版本将全面引入BootStrap框架，所以在平行升级过程中务必记录修改纪要

## 1. 自定义菜单修改

### 1.1 前台结构

> 简化并优化前台结构，适当改变前一版本中无法满足需求的结构

#### 1.1.1 门户下拉菜单修改

在11.3中顶部的下拉菜单不支持带箭头标识，这一问题在本版本中得到改善，增加了箭头标识`<span class="s-point"><em></em></span>`

原始代码：

```html
<div class="wh-hd-l-gateway-info">
  ...
</div>
```

修改后代码：

```html
<div class="wh-hd-l-gateway-cont wh-hd-snav-cont">
  <span class="s-point"><em></em></span>
  <div class="wh-hd-l-gateway-info">
    ....
  </div>
</div>
```

#### 1.1.2 自定义菜单结构修改

同上增加了箭头标识`<span class="s-point"><em></em></span>`、移除了毫无用处的属性`data-position`、移除了`clearfix`类选择器，修改结构如下：

原始代码：

```html

<!-- 自定义菜单-->
<div class="wh-hd-custom-switch" data-position="1">
    <div class="wh-hd-custom-menu clearfix">
      ...
    </div>
    <div class="wh-hd-menu-add-cut" >
      ...
    </div>
</div>
```

修改后代码：

```html
<div class="wh-hd-custom-cont wh-hd-snav-cont">
    <span class="s-point"><em></em></span>
    <div class="wh-hd-custom-switch">
        <div class="wh-hd-custom-menu visible">
          ...
        </div>
        <div class="wh-hd-menu-add-cut" >
          ...
        </div>
    </div>
</div>
```

注意：需要在原有的`<div class="wh-hd-custom-switch">..</div>`外面嵌套一层`<div class="wh-hd-custom-cont">..</div>`，其次为配合自定义菜单的子菜单左右切换，初始化`<div class="wh-hd-custom-menu visible">`中的`visible`样式选项器。

#### 1.1.3 自定义菜单编辑结构修改

11.4oa 是通过javascript脚本去操作dom添加 `<i class="fa fa-plus"></i>` ， 11.5 通过给 `<li>` 添加 `active` 类名。

原始代码：
```html
<div id="cnav-edit-con" class="wh-hd-menu-add-cut">
   <div class="wh-hd-menu-add">
     ...
     <ul class="clearfix wh-hd-menu-list">
        <li>
          <div class="wh-hd-custom-menu-d wh-hd-custom-menu-d-add" tabindex="2">
            <a href=""><i class="fa fa-mailbox-con"></i><span>邮件</span></a>
          </div>
        </li>
        ...
    </ul>
  </div>
</div>
```

```html
<div id="cnav-edit-con" class="wh-hd-menu-add-cut">
   <div class="wh-hd-menu-add">
     ...
     <ul class="clearfix wh-hd-menu-list">
        <li>
          <div class="wh-hd-custom-menu-d wh-hd-custom-menu-d-add" tabindex="2">
            <a href=""><i class="fa fa-mailbox-con"></i><span>邮件</span></a>
            <i class="fa fa-plus"></i>
          </div>
        </li>
        ...
    </ul>
  </div>
</div>
```

#### 1.1.3 右侧交互菜单增加箭头标识

同样和上述增加箭头有关，依次在`wh-hd-box-shadow`类选择器的`div`中添加`<span class="s-point"><em></em></span>`：

原始代码：

```html
<ul class="wh-hd-r-nav clearfix">
  <li class="...">
    ...
    <div class="... wh-hd-box-shadow">
      ...
    </div>
  </li>
  <li class="...">
    ...
    <div class="... wh-hd-box-shadow">
      ...
    </div>
  </li>
  ....
</ul>
```

修改后代码：

```html
<ul class="wh-hd-r-nav clearfix">
  <li class="...">
    ...
    <div class="... wh-hd-box-shadow">
      <span class="s-point"><em></em></span>
      ...
    </div>
  </li>
  <li class="...">
    ...
    <div class="... wh-hd-box-shadow">
      <span class="s-point"><em></em></span>
      ...
    </div>
  </li>
  ....
</ul>
```

#### 1.1.3 右侧搜索下拉信息下拉结构修改

信息下拉放进`wh-hd-search-box` 中。 点击下拉，给`wh-hd-search-box`添加 `open` 类名控制 `wh-hd-user-seachcontainer` 显示和隐藏。

原始代码：

```html
<div class="wh-hd-search-box clearfix">
  <a href="javascript:void(0);" class="fa wh-hd-search-info">信息<i class="fa fa-angle-right fa-angle-down"></i> </a>
  <input type="button" class="wh-hd-search-btn" value="搜索">
</div>

<div class="wh-hd-user-state  wh-hd-state wh-hd-user-search-list">
  <a href="javascript:void(0)" class="current"><span>信息</span><i class="fa"></i></a>
  <a href="javascript:void(0)"><span>发文</span><i class="fa"></i></a>
  <a href="javascript:void(0)"><span title="Get file form your site. It so simple, so young">Get file form your site. It so simple, so young</span><i class="fa"></i></a>
  <a href="javascript:void(0)"><span title="Get my life, so easy, take it easy">Get my life, so easy, take it easy</span><i class="fa"></i></a>
  <a href="javascript:void(0)"><span>合同</span><i class="fa"></i></a>
  <a href="javascript:void(0)"><span>论坛</span><i class="fa"></i></a>
  <a href="javascript:void(0)"><span>知识</span><i class="fa"></i></a>
</div>

```

修改后代码：

```html
<div class="wh-hd-search-box">
  <div class="clearfix">
    <a href="javascript:void(0);" class="fa wh-hd-search-info">信息<i class="fa fa-angle-right"></i></a>
    <input type="button" class="wh-hd-search-btn" value="搜索" />
  </div>

  <div class="wh-hd-user-seachcontainer">
    <div class="wh-hd-user-state  wh-hd-state wh-hd-user-search-list">
      <a href="javascript:void(0)" class="current"><span>信息</span><i class="fa"></i></a>
      <a href="javascript:void(0)"><span>发文</span><i class="fa"></i></a>
      <a href="javascript:void(0)"><span title="Get file form your site. It so simple, so young">Get file form your site. It so simple, so young</span><i class="fa"></i></a>
      <a href="javascript:void(0)"><span title="Get my life, so easy, take it easy">Get my life, so easy, take it easy</span><i class="fa"></i></a>
      <a href="javascript:void(0)"><span>合同</span><i class="fa"></i></a>
      <a href="javascript:void(0)"><span>论坛</span><i class="fa"></i></a>
      <a href="javascript:void(0)"><span>知识</span><i class="fa"></i></a>
    </div>
  </div>
</div>
```
#### 1.1.4 修改信息图标

由于制作图标阶段造成的大小写问题，现统一“信息图标”写作方式为小写，由原来的`<i class="fa fa-Short-mes"></i>`修改为`<i class="fa fa-short-mes"></i>`

### 1.2 交互脚本

> 为了减小html结构层的js方法对性能的影响，将js操作css样式转化为操作样式选项器（类名），以下繁杂的原始代码有可能省略简写。

#### 1.2.1 修改门户下拉事件

调用扩展方法 `astatus(options,obj)` ，集成延迟后操作事件。

原始代码：

```javascript
  /*点击门户 菜单显示隐藏*/
  var wh_hd_gi = $(".wh-hd-l-gateway-info");
  $('.fa-gateway').click(function () {
      var $this = $(this);
      if(wh_hd_gi.is(':visible')){
          $this.attr('class','fa fa-angle-down fa-gateway fa-color');
          wh_hd_gi.hide();
          return false;
      }else{
          $this.attr('class','fa fa-angle-up fa-gateway fa-color');
          wh_hd_gi.slideDown(300);
          return false;
      }
  })
```

修改后代码：

```javascript
  //点击门户下拉菜单
  /*点击门户展开时延时出现滚动条0.2s*/
  $("#gway-switch-btn .fa-gateway").astatus({
      delay:300,
      adddom:'#gway-switch-con'
  },function(){
      var $thisparent = $('#gway-switch-btn')
      if($thisparent.hasClass("open")){
          $thisparent.removeClass("open");
          return false; 
      }
      $thisparent.addClass("open");
  });   
  /*离开父容器后下拉消失*/ 
  $("#gway-switch-btn").mouseleave(function(){
      $(this).removeClass("open");
  })
```

#### 1.2.3 修改点击下拉自定义菜单事件

原始代码：

```javascript
/*菜单收缩*/
var wh_hd_custom_switch = $(".wh-hd-custom-switch");
var wh_hd_custom_menu = $(".wh-hd-custom-menu");
var wh_hd_cmc = $(".wh-hd-menu-add-cut");
$(".wh-hd-menu-btn-a").click(function () {
    if(wh_hd_custom_switch.is(':visible')){
        $(this).parents().removeClass('current');
        wh_hd_custom_switch.hide();
        return false;
    }else{
        wh_hd_custom_switch.slideDown(100);
        $(this).parents(".wh-hd-menu-btn").addClass('current');
        return false;
    }
    return false;
});

wh_hd_custom_switch.hover(
      function(){
  },
      function(){
          $(".wh-hd-menu-btn").removeClass('current');
          $(this).slideUp(100);

  });
```

修改后代码：

```javascript
/* 点击自定义菜单按钮显示下拉菜单 */
$(".wh-hd-menu-btn").click(function(){
    var $this = $(this);
    if($this.hasClass("open")){
        $this.removeClass("open");
        return false;
    }else{
        $(this).addClass("open");
        return false;
    }  
});

/*自定义菜单展开后，离开此区域隐藏菜单*/
$('#cnav-swith-con').on('mouseleave',function(){
    $('#c-nav-drop').parent().removeClass('open');
});
```

#### 1.2.2 修改并简化自定义中的切换动态效果

将源代码中的`.css()`方法改为`.addClass()`和`.removeClass()`，通过切换样式选择器并触动画样式来表现，修改如下：

原始代码：
```javascript
/*自定义菜单显隐*/
$(".wh-hd-custom-menu-btn").click(function(){
    wh_hd_custom_menu.css({
      ....
    });
    wh_hd_cmc.css({
      ....
    });
    return false;
});
//点击向左按钮 自定义菜单消失
 $(".fa-angle-left").click(function(){
     wh_hd_custom_menu.css({
        ...
     });
     wh_hd_cmc.css({
        ...
     });
     return false;
 });
```

修改后代码：

```javascript
/*自定义菜单显隐*/
$(".wh-hd-custom-menu-btn").click(function(){
    wh_hd_custom_menu.removeClass('visible');
    wh_hd_cmc.addClass('visible');
    return false;
});
//点击向左按钮 自定义菜单消失
$(".fa-angle-left").click(function(){        
    wh_hd_custom_menu.addClass('visible');
    wh_hd_cmc.removeClass('visible');
    return false;
});
```

#### 1.2.3 修改自定义菜单编辑hover交互事件

原始代码：

```javascript
//自定义菜单显示 hover单个选项 出现删除按钮   
var iremove = '<i class="fa fa-times"></i>';
$(".wh-hd-menu-cut-slide .wh-hd-custom-menu-d-del").hover(function(){
    $(this).append(iremove);
},function(){
    $(this).find('.fa-times').remove();
});

//自定义菜单显示 hover单个选项 出现添加按钮
var itag = '<i class="fa fa-plus"></i>';
$(".wh-hd-menu-add .wh-hd-custom-menu-d-add").hover(function(){
    $(this).append(itag);
},function(){
    $(this).find('.fa-plus').remove();
});
```

修改后代码：

```javascript
/*编辑自定义菜单 hover 交互效果*/
$('.wh-hd-menu-add li').hover(function(){
    $(this).addClass("active");
},function(){
    $(this).removeClass("active");
})
```

#### 1.2.3 右侧一级hover下拉菜单事件

把 `slideDown()` 的下拉效果用css3 的 animate 动画效果代替。提高性能。

原始代码:
```javascript
  //右侧菜单常规HOVER交互
  $(".wh-hd-r-nav li:has(.wh-hd-box-shadow)").hover(function(){
      $(this).children(".wh-hd-box-shadow").stop(true,true).slideDown(100);
  },function(){
      $(this).children(".wh-hd-box-shadow").stop(true,true).slideUp(100);
  });
```

修改后代码
```javascript
  //右侧菜单常规HOVER交互
  $(".wh-hd-r-nav li:has(.wh-hd-box-shadow)").hover(function(){
      $(this).children('.wh-hd-box-shadow').addClass('open');
  },function(){
      $(this).children('.wh-hd-box-shadow').removeClass('open');
  });
```

#### 1.2.4 右侧二级点击下拉菜单事件

**个人资料**

用`addClass()`、`removeClass()` 代替 `slideDown()` jquery 动画。

原始代码:

```javascript
var wh_hd_state = $(".wh-hd-state");
var wh_clickshow= $('.wh-hd-user-faclick');
wh_clickshow.click(function(){
    var index = wh_clickshow.index(this);
    wh_clickshow.not(this).find('i').removeClass("fa-angle-down");
    $(this).find('i').toggleClass("fa-angle-down");
    wh_hd_state.eq(index).slideToggle(300).siblings(".wh-hd-state").hide();
});
```

修改后代码：

```javascript
var wh_hd_statecon = $(".wh-hd-statecontainer");
var wh_clickshow= $('.wh-hd-user-faclick');
wh_clickshow.click(function(){
    var $this = $(this);
    var index = wh_clickshow.index($this);
    if($this.hasClass("active")){
        $this.removeClass("active");
        wh_hd_statecon.eq(index).removeClass("current");
    }else{
        $this.addClass("active").siblings().removeClass("active");
        wh_hd_statecon.removeClass("current");
        wh_hd_statecon.eq(index).addClass("current");
    }
});
```

**搜索信息**

原始代码:

```javascript
//右侧菜单 搜索 展开搜索分类交互
var wh_hd_usl = $('.wh-hd-user-search-list');
  $(".wh-hd-search-info").click(function(){
    $(this).children(".fa").toggleClass("fa-angle-down");
    wh_hd_usl.slideToggle(300);
});
```

修改后代码：

```javascript
//信息搜索下拉菜单
var searchbox = $(".wh-hd-search-box");
  $(".wh-hd-search-info .fa-angle-right").click(function() {
    if(searchbox.hasClass("open")){
        searchbox.removeClass("open");
    }else{
        searchbox.addClass("open");
    }
})
```

#### 1.2.5 修改`document`的点击事件，排除了自定义菜单

优化了`document`点击事件中的下拉菜单区域，即当下拉菜单展开时，点击除了下拉菜单之外的任意`document`，下拉菜单将消失

原始代码：

```javascript
$(document).click(function(){
    if(wh_hd_custom_switch.is(':visible')){
        $(".wh-hd-menu-btn").removeClass('active');
        wh_hd_custom_switch.hide();
        return false;
    }
})
```

修改后代码：

```javascript
$(document).click(function(){
    if(wh_hd_custom_switch.is(':visible')){
        return false;
    }
    $(".wh-hd-menu-btn").removeClass('active');
    wh_hd_custom_switch.hide();
})
```

#### 1.2.6 替换控制字号大小脚本

原有通过引入不同`*.css`来切换字号大小，为了重新请求带来的性能影响，通过内置全部`css`来切换`body`中的样式选择器控制调用大小字号，具体如下：

原始代码：

以下代码作移除操作：
```javascript
function createLink(cssURL){
  ...
}
function removeLink(cssURL){
  ...
}
//body 加载 字体css
$('.small').click(function(){
    ...
})
$('.big').click(function(){
    ...
})

```

修改后只需在`body` 上添加指定的类名`size-big`(大字号)或者`size-small`(小字号)：

```html
<body class="... size-big/size-small">
...
</body>
```

#### 1.2.7 替换控制主题切换脚本

同控制字号大小脚本方式一样，将原有引入不同`*.css`方式改为`body`的样式选择器切换，具体如下：

```html
<body class=" ... theme-seablue ... ">
...
</body>
```

主体包括9种皮肤。分别是`theme-default`,`theme-orange`, `theme-green`,`theme-linepurple`,`theme-lineorange`,`theme-linered`,`theme-pureblue`,`theme-puregreen`,`theme-seablue`。

## 2. 内容框架交互脚本修改

#### 2.1.1 `wh-content` 左侧树结构隐藏显示方式修改

点击隐藏给外框架 `wh-content` 加载 `close-l-nav` 类名。

原始脚本：

```javascript
//左侧隐藏切换
$(function(){
    var leftTree = $(".wh-con-table th");
    leftTree.show();
    $("#switchShow").hide();
    $("#switchHide").click(function(){
        leftTree.hide();
        $("#switchShow").show();
    });
    $("#switchShow").click(function(){
        leftTree.show();
        $("#switchShow").hide();
    })
});
```

修改后脚本：

```javascript
//左侧菜单切换
$('#switch-l-nav').astatus({delay:300},function(){
    $('.wh-content').toggleClass('close-l-nav');
});
```

#### 2.1.2 `wh-content` 右侧portal外容器高度修改

oa-11.4中 `wh-r-content` 的高度是由js根据脚本去动态赋值的 。 oa-11.5中由css样式来控制内容框架的高度。

移除原始脚本：

```javascript
function screeBox(leftList,rightIframe){
    var winHeight = $(window).height();
    leftList.css({'height':winHeight - 130});
    rightIframe.css({'height':winHeight - 90});
}
$(function(){
    var rightIframeH = $(".wh-r-content");
    var leftListH = $(".wh-l-con");

    screeBox(leftListH,rightIframeH);


    var resizeTimer;
    function resizeFunction() {
        screeBox(leftListH,rightIframeH);
    };

    $(window).resize(function() {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(resizeFunction, 300);
    });
    resizeFunction();

});
```

修改后只需给`wh-r-content wh-ios-iframe-bug` 添加类名：`wh-r-iframe`，如下:

```html
<div class="wh-r-content wh-r-iframe wh-ios-iframe-bug">
  <iframe src="information.shtml"...></iframe>
</div>
```

## 3. 样式

### 按钮

增加了`class="btn btn-wh"`专用版按钮
