OA-BootStrap
===================

[README](README.md) / [修改日志](CHANGELOG.md) / [修改纪要](CHANGE.md) / [快速上手](QUICKSTART.md) / [选择BootStrap](CHOSE.md)

-------------------

新一代的OA将采用基于BootStrap的前端开发框架，BootStrap是基于Node.js模式开发最优秀前端框架之一。

## 简介

BootStrap提供了基于jekyll的静态服务器的演示，jekyll相当于apache一样的提供WEB服务的本地或者远程服务器，在我们定制版OA产品中，并不需要此功能。本产品基于目前的BootStrap 3.3.6版本为基础，对编译环境配置进行了定制化改造，并对其JS、CSS进行适当改造以兼容IE8浏览器。

## 优点

BootStrap主要有三大特性，更多的制定了一套严格前台、样式及JS代码的规范，并从源头节省了前端开发的时间成本，详细文档请前往BootStrap官网进一步了解。基主要特性表现以下：

### 基于预处理脚本的方式

<img src="mdimg/sass-less.png" width="50%" style="width:50%;background:#fff; border:1px solid #ccc;" />

虽然我们可以直接使用 Bootstrap 提供的 CSS 样式表，但是默认的UI样式并不能满足产品的需求，而Bootstrap样式源码是基于最流行的 CSS 预处理脚本 - Less 和 Sass 开发的。目前我们的前端开发模式采用的是Less预编辑处理方式，简言之就是像写程序一样的去写样式，避免逐行编写几千几万行的CSS样式代码。

### 一个框架、多种设备

<img src="mdimg/devices.png" width="50%" style="width:50%;background:#fff; border:1px solid #ccc;" />

在理论的全新架构下，我们可以在产品设计阶段斟酌设备适配，例如基于手机端设备向上兼容所有大屏幕设备响应，并且基于一套前端代码的表现有效的适配手机、平板、PC设备，旨在从前端阶段减少开发成本。

### 丰富的组件插件

<img src="mdimg/components.png" width="50%" style="width:50%;background:#fff; border:1px solid #ccc;" />

我们不必再为产品功能需求而烦恼，不再为表单、控件件的UI不统一而纠缠，对于前端开发和程序开发人员来说，逻辑和交互的剥离带来的是更多的便捷开发，BootStrap内置了大量的常用HTML 元素、CSS 组件、JS插件，满足了产品的UI基本需求。重要的是BootStrap是基于jQuery的二次开发，它完美的兼容jQuery。

#### 外框架



#### 换肤

三种样式，18种颜色。

加载样式表：
``` html

<!-- 默认 -->
<link rel="stylesheet" href="dist/css/template_default/themes/2016/template.theme.before.css" />  
<link rel="stylesheet" href="dist/css/template_default/themes/2016/template.theme.after.css" />  

<!-- 线型 -->
<link rel="stylesheet" href="dist/css/template_default/themes/2016/template.theme.line.css" />   

<!-- 纯色 -->
<link rel="stylesheet" href="dist/css/template_default/themes/2016/template.theme.pure.css" />     
```
*ie8下bug: 默认情况下，后五种样式加载不了。分开写解决此bug*

使用方法：

```html
<html lang="zh-cn" class="wh-gray-bg theme-gray theme-line-gray size-big">
```
表示 调用 `gray` `line` 皮肤。

#### 详情页栅格修改
弹出详情页的栅格 与 bootstrap 原生的栅格有所不同。

```less
.col-wh-1,
.col-wh-2,
.col-wh-3,
.col-wh-4,
.col-wh-5,
.col-wh-6,
.col-wh-7,
.col-wh-8,
.col-wh-9,
.col-wh-10,
.col-wh-11,
.col-wh-12,
```

用法: 

```html

<div class="row">
  <div class="col-wh-9">
  	...
  </div>
  <div class="col-wh-3">
   	...
  </div>
</div>

```


#### 弹出框

使用layer插件。 文档参见： http://layer.layui.com/

整合到产品中的使用方法：

1. 弹出页包含在父页面中：

```html
<div id="detail-selectuser" class="layer-modal modal-selectuser-set">
	...
</div>
```
`id`: modal 的 唯一标示;

`layer-modal`: **必要的类名**，初始状态下，样式为`display: none;`;

`modal-selectuser-set`: 用于该 `modal` 的样式;

调用js:

```javascript
$("#detail-selectuser").on('click', function(argument){
    layer.open({
      type: 1,          
      title: '参会人号码',
      shadeClose: false,
      shade: 0.8,
      area: ['480px', 'auto'],
      content: $('#detail-selectuser')
    });
  })
```

参数配置参见layer说明文档。

2. 弹出页为iframe ，可在多个页面调用同一个弹出框

```html
<div id="meeting-start" class="meeting-start-set layui-iframe-set">
	...
</div>
```

`id`: modal 的 唯一标示;

`modal-selectuser-set`: 用于该 `modal` 的样式;

`layui-iframe-set` 表示弹出框为iframe 的形式。**必要类名**。

调用js:

```javascript
$(".meeting-handle").on("click", function(argument) {
	layer.open({
		type: 2,
		title: '视频会议',
		shadeClose: false,
		shade: 0.8,
		area: ['620px', '350px'],
		content: "include/meeting-iframe-test.html"
	});
});
```

参数配置参见layer说明文档。

**需要注意的是，弹出框为iframe中的样式需要重新加载。**

#### 下拉框

下拉框我们可以使用bs 原生的下拉菜单，在设计不能满足的情况下，可以进行定制。一般情况下采用添加`class`类名的方式去操作动画效果。
