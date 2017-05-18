定制版Bootstrap概要
===================

[README](README.md) / [修改日志](CHANGELOG.md) / [修改纪要](CHANGE.md) / [快速上手](QUICKSTART.md) / [选择BootStrap](CHOSE.md)

-------------------

Note: Bootstrap，来自Twitter，是目前很受欢迎的前端开发框架，Bootstrap是基于Node.JS的前端开发环境开发，其主要插件为grunt，Grunt - JavaScript 任务运行器。对于需要重复执行的任务,例如压缩、编译、单元测试，还有CSS的预编译处理等，grunt可以减少工作量，使你的工作更轻松。

在深入学习使用之前，我们需要了解关于Node.JS、Grunt、BootStrap的一些基础知识：

## 1. 了解Node.JS

> Node.JS是一个基于Chrome JavaScript运行时建立的平台，用于方便地搭建响应速度快、易于扩展的网络应用，它是对Google V8引擎进行了封装。V8引 擎执行Javascript的速度非常快，性能非常好。

对于基于Bootstrap的大型产品来说，基于Node.JS环境开发非常有必要，让写作JS、CSS更系统更规范，多人协同工作时，基于Node.JS的分工带来了更多的便捷。

grunt是基于Node.JS的一个自动化构建工具，这样一个自动化工具可以减轻我们的重复劳动，简化工作。简单意思是操作完“源”文件后，使用grunt进行构建生成的发布文件作为产品项目发布文件，而“源”文件就像程序源码一样作为修改基础，当在Gruntfile文件正确配置好了任务，任务运行器就会自动完成小组的大部分无聊的工作。

## 2. 使用Node.JS的grunt

本产品已经创建好一份配置好package.json 和 Gruntfile

文件的项目了，所以我们在安装好Node.JS后，打开命令行工具，进入产品目录即可开始工作：

1. 将命令行的当前目录转到项目的根目录下。
2. 执行`npm install`命令安装项目依赖的库。
3. 全局安装grunt，执行命令：`npm install -g grunt`和 `npm install -g grunt-bower-cli`
3. 执行`grunt`命令。

此外我们在分工时需要执行局部任务，那么在键入`grunt`
命令时可以带上参数：

1. `grunt less:core`表示本产品的主样式库编译
2. `grunt concat:bootstrap`表示编译压缩Bootstrap的脚本库
3. ...

## 3. 了解BootStrap

BootStrap提供了基于jekyll的静态服务器的演示，jekyll相当于apache一样的提供WEB服务的本地或者远程服务器，在我们定制版OA产品中，并不需要此功能。本产品基于目前的BootStrap 3.3.6版本为基础，对编译环境配置进行了定制化改造，并对其JS、CSS进行适当改造以兼容IE8浏览器。

## 4. 正式开始

在定制版BootStrap中，很多时候JS、CSS并非生搬硬套，我们在实际工作中优先引入BootStrap的原生JS、CSS，遇到功能无法满足时，以扩展形式地引入额外的JS、CSS以达到UI交互覆盖继承的目的，保证在后期BootStrap升级时，产品能够顺利的进行过渡升级。

### 4.1 如何简单的使用

使用BootStrap的宗旨就是为了简化工作，所以无论对于前端人员还是开发人员，使用起来都是如此简单，参考下述示例：

**HTML基本格式**

```html
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" href="../dist/css/template_system/template.fa.css" />
    <link rel="stylesheet" href="../dist/css/template.bootstrap.css" />
    <link rel="stylesheet" href="../dist/css/template.bootstrap.theme.css" />
    <link rel="stylesheet" href="../dist/css/template_default/template.style.css" />
    <link rel="stylesheet" href="../dist/css/template_default/themes/2015/template.theme.css" />
    <link rel="stylesheet" href="../dist/css/template_default/template.style.size.css" />
</head>
<body>
  ...
</body>
<script type="text/javascript" src="../scripts/plugins/jquery/jquery.min.js" ></script>
<script type="text/javascript" src="../dist/js/template.js"></script>
<script type="text/javascript" src="../dist/js/template.extend.js" ></script>
</html>
```

上述代码是对于前端开发人员以及参与JS功能的开发人员引用目录，在实际生产环境中这些目录都会变更产品环境目录，文件也变为压缩版：

```html
<link rel="stylesheet" href="../template/css/template_system/template.fa.min.css" />
<link rel="stylesheet" href="../template/css/template.bootstrap.min.css" />
..
<script type="text/javascript" src="../scripts/plugins/jquery/jquery.min.js" ></script>
<script type="text/javascript" src="../template/js/template.min.js"></script>
<script type="text/javascript" src="../template/js/template.extend.min.js" ></script>
```

**开始引入一段下拉菜单的代码**：

```html
<ul class="nav navbar-nav">
  <li class="dropdown">
    <a id="drop1" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      下拉菜单一
      <span class="caret"></span>
    </a>
    <ul class="dropdown-menu" aria-labelledby="drop1">
      <li><a href="#">子菜单</a></li>
      <li><a href="#">其它</a></li>
      <li><a href="#">或者更多</a></li>
      <li role="separator" class="divider"></li>
      <li><a href="#">多一个</a></li>
    </ul>
  </li>
</ul>
```

前端和开发人员需要知道的是哪个Dom元素需要有下拉菜单，请为该Dom子元素添加data属性` data-toggle="dropdown"`，另外该Dom元素添加`class="dropdown"`，即可完成任务，剩下的就交给前端开发人员去做背后的样式工作吧！

其它一些直接运用组件参考 http://getbootstrap.com，中文站：http://v3.bootcss.com/

### 4.2 如何为我所用

> 定制版BootStrap将源码保持不动，采用扩展方式编译定制版JS和CSS达到不修改源代码的目的。

**结构介绍**

查看详细结构：[编译目录](STRUCT.md)

参考以上结构，我们对dropdown.js进行了扩展改造，并增加了两个扩展插件，未来会有更多扩展插件加入。对于less库，我们保留了BootStrap原生库，并对部分less进行覆盖继承，详细请参阅后文。**具体示例如下：**

### 4.3 JS功能改造及深入

* **Dropdown 原生下拉菜单功能改造**

    在使用BootStrap的Dropdown时，我们发现其点击展开下拉菜单事件的事件Dom元素依赖于其直接父级Dom元素，而实际情况中我们可能需要依赖其祖先Dom，所以我们需要对dropdown.js进行改造。

    打开文件`source/js/bootstrap-wh/dropdown-wh.js`，找到以下源码：

    ```javascript
    return $parent && $parent.length ? $parent : $this.parent()
    ```

    该代码是一个布尔表达式，返回的不管怎么样都是`parent`，那么我们将其改造成当条件为否的时候，返回一个指定类选择器的祖先Dom元素。

    ```javascript
    return $parent && $parent.length ? $parent : $this.parents('.dropdown')
    ```

    当我们在前台指定某个Dom元素的类名为`dropdown`时，下拉菜单的功能即生效。

    修改完成后根据我们配置好的Gruntfile，进行单独编译，在命令行执行命令`grunt concat:bootstrap`即可完成修改。

* **Device 获取设备userAgent扩展**

    我们在做基于FrameWork7的移动端构建时发现，通过监听设备ususerAgent获取设备型号并以字符串形式传输给html的样式选择器类名，以达到兼容各设备的样式继承。

    我们曾在OA11.3中遇到iframe滚动条无法在ipad下的ios浏览器中正常使用，为此额外为其增加一个样式表，虽然解决问题，但并不是最佳方案，通过移植该功能以达到本产品未来兼容性的针对性解决方案。

    在`source/js/extend/`中创建device.js，并将其格式修改为：

    ```javascript
    +function ($) {
        'use strict';
        ...
    }(jQuery);
    ```

    其它方面需要增加对ie版本的识别，在其中各处增加代码：

    ```javascript
    //IE版本监听
    if(ua.indexOf('MSIE') > -1){
        var iev = ua.match(/(MSIE)\s([\d_]+)/);
    }
    if(ua.indexOf("rv") > -1){
        var iev = ua.match(/(rv:)([\d_]+)/);
    }
    ...
    if (iev){
        device.os = 'iev';
        device.osVersion = iev[2];
    }
    ```

    最后仍然要在命令行执行编译。

* **Active-State 点击增加过渡样式选择器扩展**

    本产品的前端设计中逐渐摒弃基于jQuery的动画，替尔代之的是基于jQuery的样式选择器变化+CSS动画！此举为区分现代浏览器和古代浏览器的性能差异，实际制作中发现需要给一些Dom元素增加一个延时类选择器名，然后过一定时间后自动移除。

    在`source/js/extend/`中创建active-state.js，并加入以下代码：

    ```javascript
    +function($){
        'use strict';
        $.fn.Astate = function (options,obj) {
            var defualts = {delay:300};
            var opts = $.extend({}, defualts, options);  
            var $element = $(this);

            $element.on('click',function(){
                $element.addClass('active-state');
                setTimeout(function(){                    
                    $element.removeClass('active-state');
                }, opts.delay);
            });
            $element.on('click',obj);
        }
    }(jQuery);
    ```

    完成修改后同上继续单独编译。

    不难发现，这只是一个jQuery插件，前台使用起来只需引用以下代码即可：

    ```javascript
    $('#switch-l-nav').Astate({delay:300},function(){
        //可以回调
    });
    ```

    `{delay:time}`指这个类`active-state`存在多长时间消失，后面同时可以追加一个操作对象。

### 4.4 样式库改造

关于样式库的改造不在此教程中说明。
