编译目录
===

```html
source/
<!--源码所在目录-->
├── bspjs/ <!--源码JS所在目录-->
│   ├── bootstrap/  <!--bootstrap源码JS所在目录-->
│   │   ├── affix.js
│   │   ├── alert.js
│   │   ├── tap.js
│   │   ├── dropdown.js
│   │   └── ......
│   ├── bootstrap-wh/ <!--修改版bootstrap源码JS所在目录-->
│   │   └── dropdown-wh.js <!--这是基于原版的定制版-->
│   ├── extend/ <!--这是按照bootstrap方式封装的扩展插件-->
│   │   ├── autogrow-textarea.js <!--textarea自适应：https://github.com/jevin/Autogrow-Textarea-->
│   │   ├── chosen.js <!--多功能select重绘：https://github.com/harvesthq/chosen-->
│   │   ├── laydate.js <!--lay日期控件：https://github.com/sentsin/laydate -->
│   │   ├── layer.js <!--lay弹层控件：https://github.com/sentsin/layer-->
│   │   ├── pagination.js <!--分页控件：https://github.com/mricle/Mricode.Pagination-->
│   │   ├── select.js <!--轻量级select重绘http://silviomoreto.github.io/bootstrap-select-->
│   │   └── ...
│   └── custom/ <!--这是按照bootstrap方式封装的扩展插件-->
│       ├── active-status.js <!--点击增加过渡类选择器，查看USEAGE.md阅读使用说明-->
│       ├── scroll-top.js <!--返回顶部，查看USEAGE.md阅读使用说明-->
│       └── device.js <!--识别设备userAgent，可根据性能差异将其移除-->
└── template/ <!--静态资源所在目录-->
    ├── fonts/ <!--矢量图标文件所在目录-->
    ├── images/ <!--图片资源所在目录-->
    └── less/ <!--图片less样式所在目录-->
        ├── bootstrap/ <!--Bootstrap原生less文件-->
        │   └── ...
        ├── fontless/ <!--矢量图标样式所在目录-->
        ├── global/ <!--公共样式-->
        │   ├── template.global.less <!--每个编译出的less都需要它-->
        │   ├── template.keyframe.less <!--11.4的时候统一规划的动画less库-->
        │   └── template.ztree.less <!--ztree主样式库-->
        ├── media/ <!--公共组件所在的样式-->
        │   ├── template.attachment.less <!--附件列表样式-->
        │   ├── template.btn.less <!--按钮的样式-->
        │   ├── template.modal.less <!--弹框类样式-->
        │   ├── template.chosen.less <!--对应多功能select重绘样式-->
        │   ├── template.colorpicker.less <!--对应控制面板捨色器样式-->
        │   ├── template.gotop.less <!--对应返回顶部样式-->
        │   ├── template.laydate.less <!--对应日期控件样式-->
        │   ├── template.pagination.less <!--对应分页控件样式-->
        │   ├── template.select.less <!--对应轻量级select重绘样式-->
        │   ├── template.laydate.less <!--对应日期控件样式-->
        │   └── template.skincolor.less <!--对应公共换肤样式-->
        ├── others/ <!--原有的ie8、ios补丁样式，计划移除-->
        ├── size/ <!--管理继承11.4的门户和portal的字号大小样式-->
        │   ├── template.portal.big.less <!--portal中14px字号变量库-->
        │   ├── template.portal.small.less <!--portal中12px字号变量库-->
        │   ├── template.style.big.less <!--门户中14px字号变量库-->
        │   └── template.style.small.less <!--门户中12px字号变量库-->
        ├── style/ <!--主样式-->
        │   ├── template.detail.less <!--详情页的样式库-->
        │   ├── template.frame.less <!--门户的样式库-->
        │   ├── template.list.less <!--列表样式库-->
        │   └── template.table.less <!--表格样式库-->
        ├── svg/ <!--计划未来对一些svg素材进行管理-->
        ├── system/ <!--规划的系统样式-->
        │   ├── template.login.ie8.less <!--登录页的ie8补丁样式，未来仅在登录样式中展现-->
        │   ├── template.login.less <!--登录页样式库-->
        │   └── template.system.less <!--系统样式库-->
        ├── themes/ <!--管理换肤主题样式-->
        │   └── 2015/ <!--特定文件夹-->
        │       ├── color/ <!--管理颜色的样式库-->
        │       │   ├── var-default <!--默认皮肤类型对应的颜色变量库-->
        │       │   ├── var-global <!--所有皮肤的公共颜色变量库-->
        │       │   ├── var-line <!--线性皮肤类型对应的颜色变量库-->
        │       │   └── var-pure <!--纯色皮肤类型对应的颜色变量库-->
        │       ├── template.theme.detail.less <!--详情页的颜色样式-->
        │       ├── template.theme.less <!--主样式的颜色样式-->
        │       ├── template.theme.line.less <!--线性皮肤的补充样式-->
        │       ├── template.theme.pure.less <!--纯色皮肤的补充样式-->
        │       └── template.theme.media.less <!--公共组件的颜色样式-->
        ├── template.bootstrap.less <!--bootstrap主样式-->
        ├── template.bootstrap.theme.less <!--bootstrap自定制变量库-->
        ├── template.bootstrap.wh.less <!--bootstrap-wh版重置样式-->       
        ├── <!-- *********** -->       
        ├── <!--下述样式均依赖global/template.global.less-->   
        ├── <!-- *********** -->       
        ├── template.detail.less <!--详情页编译样式，依赖、style/template.detail.less-->
        ├── template.detail.size.less <!--详情页的字号大小编译样式-->
        ├── template.fa.less <!--字体图标的编译样式，依赖于 fontless/下的所有样式库-->
        ├── template.lists.less <!--列表页编译样式，依赖style/template.table.less和template.list.less-->
        ├── template.media.less <!--公共组件编译样式，依赖 media/下所有样式库-->
        ├── template.page.less <!--11.4的portal编译补充样式，包含知识文库、知道-->
        ├── template.portal.less <!--11.4的portal编译主样式-->
        ├── template.portal.size.less <!--Portal的字号大小编译样式，依赖 size/下所有样式库-->
        ├── template.print.less <!--打印页编译样式-->
        ├── template.reset.less <!--公共重置编译样式-->
        ├── template.style.less <!--门户编译主样式-->
        └── template.style.size.less <!--门户编译字号大小样式-->
```
