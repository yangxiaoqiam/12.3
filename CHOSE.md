为什么要选用BootStrap
====

[README](README.md) / [修改日志](CHANGELOG.md) / [修改纪要](CHANGE.md) / [快速上手](QUICKSTART.md) / [选择BootStrap](CHOSE.md)

-------------------

## IE8降级改进

Note: 在11.3的前端开发中，使用了许多硬兼容IE8的方式，在OA-Bootstrap中都一一改进，减小IE8下的性能影响

### 顶部下拉菜单IE8效果

在11.3中下拉菜单的IE8下是没有投影效果，所以替代为灰色边框，而在OA-Bootstrap版本中，替代的是皮肤颜色

|IE8效果|正常效果|
|------|------|
|![IE8下拉边框](_mdimg/chose-01.png)|![IE8下拉边框](_mdimg/chose-02.png)|

### 全局CSS动画改进

在OA-Bootstrap中，将IE8的动画效果移除，对支持CSS3动画引擎的浏览器采用CSS3动画来实现，从而提高性能和体验。

## 前端结构改进

在OA-Bootstrap中，采用

## 良好的人机体验

### 1.1 WAI-ARIA无障碍交互

在设计产品时我们可能会考虑残障人士如何使用产品，大多情况下忽略这点，但在实际运用中比如阅读器的使用，又或是无鼠标情形下如何使用产品，而这些细心的设计会使产品上升一个档次，`WAI-ARIA`实际上是一套规范和标准，只是它总是被忽略，而在BootStrap的交互中被前台表现出来，你会发现除了能用鼠标交互外，还可以使用键盘上的`tab`键和方向键等键盘操作。

平时我们通过普通的`dom`元素来模拟`select`控件并未在意`dom`元素的焦点控制，而使用BootStrap就可以轻松地创建一个可被屏幕阅读器、键盘用户、残障人士访问的应用产品却并不需要大量额外的代码，我们只需在实际开发中遵循其严格的规范即可完成目标任务，从而带给用户难以置信的快乐，虽然它可能很少时候被运用到。

**其实无障碍交互很常见**，

* 最常见的`Tab`切换
* 我们输入账号密码后敲`Enter`确认
* 浏览器自带`Home`、`End`、`Backspace`、`Page Up`、`Page Down`

比如我们在设计主导航菜单时，可以试试`tab`和方向键控制菜单展开及切换。`role=" "`属性就是最重要的部分，它的值有`button`、`tab`、`checkbox`等等，详情参见上文参考资料

**演示链接**：

http://192.168.0.223:8089/fff76ca0/0/frontend/oa-bootstrap/view/bootstrap.html

**实例代码**：


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
  <li class="dropdown">
    <a id="drop2" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      下拉菜单二
      <span class="caret"></span>
    </a>
    <ul class="dropdown-menu" aria-labelledby="drop2">
      <li><a href="#">子菜单</a></li>
      <li><a href="#">其它</a></li>
      <li><a href="#">或者更多</a></li>
      <li role="separator" class="divider"></li>
      <li><a href="#">多一个</a></li>
    </ul>
  </li>
</ul>
```
> aria-haspopup :true表示点击的时候会出现菜单或是浮动元素； false表示没有pop-up效果。
aria-expanded:表示展开状态。默认为undefined, 表示当前展开状态未知。其它可选值：true表示元素是展开的；false表示元素不是展开的。

参考资料：

* [WAI-ARIA无障碍阅读](http://www.zhangxinxu.com/wordpress/2012/03/wai-aria-%E6%97%A0%E9%9A%9C%E7%A2%8D%E9%98%85%E8%AF%BB/)
* [创建无障碍的对话框](http://ju.outofmemory.cn/entry/22715)
* [div标签别样的属性tabindex](http://www.itnose.net/detail/6061166.html)

## 2.优秀的前端代码结构
