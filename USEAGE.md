插件文档
====

[README](README.md) / [修改日志](CHANGELOG.md) / [修改纪要](CHANGE.md) / [快速上手](QUICKSTART.md) / [选择BootStrap](CHOSE.md)

-------------------

## 1. 点击焦点延时（active-status.js）

### 用途说明

OA 11.5中，在某些特定的点击事件中增加了一个延时`class`样式状态，当某个`DOM`元素有点击事件时，可以选择是否给其增加一个延时`class`样式，以便在这个延时内执行`css3`动画，这个`class`名叫`active-status`，并可以设置该`class`名存在时间，例如设置参数`delay:300ms`，即表示`300ms`后此类名消失

### 源路径

```
/source/bspjs/custom/active-status.js
```

### 使用方法

本插件主要是针对`click`事件做的一个增强，所以它就是一个`click`事件。

默认参数

```
$('.testdom').astatus()
```

增加回调

```
$('.testdom').astatus(function(){
  //...可以干些什么事
})
```

指定DOM (含所有配置)

```
$('.testdom').astatus({
  delay:300, //持续时间
  etype:'click', //事件类型，还可以是touchstart
  cname:'active-status', //增加的class类名
  adddom:'.test-anotherdom' //指定的DOM增加变化类名
},function(){
  //...可以干些什么事
})
```

CSS 动画

```
.testdom{
  -webkit-transition: all 300ms;
  -o-transition: all 300ms;
  transition: all 300ms;
}
.testdom.active-status{
  -webkit-transition: all 300ms;
  -o-transition: all 300ms;
  transition: all 300ms;
}
```


## 2. 设备监听

### 用途说明

OA 11.5中，加入了对设备的监听，主要表现在对Ipad Safari、IE8的监听！通过对`html`赋`class`的方式，例如IE8浏览器，Dom文档的代码则表现为`<html class="iev iev-8>`，这样在页面初始化时就引入该`class`，在CSS中就可以针对特定设备编写样式，从而避免了`css hack`的使用。

### 源路径

```
/source/bspjs/custom/device.js
```

### 使用方法

本插件已内置在`template.custom.min.js`中，引用该js就可以了

LESS中的写作原则

```css
.iev-8{
    /*CSS*/
}

.ios{
    /*CSS*/
}
```

## 3. 侧边工具栏

### 用途说明

OA 11.5中，在一些详情页会增加一个侧边工具栏，里面有一些常规快捷菜单和返回顶部，本插件主要功能为了解决返回顶部的条件显示，保证侧边工具栏的其它菜单常态显示，返回顶部在一定条件下才显示。

### 源路径

```
/source/bspjs/custom/scroll-top.js
```

### 使用方法

本插件依赖选择器指定DOM元素执行，提供三个参数配置

```javascript
$('.side-go-top').scrollTotop({
    offsetFixed:200, /*滚动条距离顶部300时触发 show-fixed*/
    offsetTop:100, /*滚动条距离顶部200时触发 show-top*/
    duration:300 /*回到顶部花费时间*/
});
```

重要的是返回顶部事件封装在插件中，所以依赖于`html`结构中的`.btn-go-top`，如下：

```html
<div class="side-go-top">
    <a href="javascript:void(0)">菜单1</a>
    <a href="javascript:void(0)">菜单2</a>
    <a href="javascript:void(0)">菜单3</a>
    <a class="btn-go-top" href="javascript:void(0)">顶部</a>
</div>
```
