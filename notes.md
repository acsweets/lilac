## 常用组件属性
### AnimatedBottomNavigationBar 底部动画导航栏
`tabBuilder`: 用于构建标签栏中的小部件。
  
 `itemCount`: 标签栏项目的总数。

 `icons`: 标签栏中要渲染的图标数据列表。

`onTap`: 处理标签项被点击的回调函数。

 `activeIndex`: 当前选中的标签项索引。

 `iconSize`: 每个标签栏图标的自定义大小,默认为24。

 `height`: 标签栏的自定义高度,默认为56。
 
`notchMargin`: 浮动动作按钮的凹槽边距,默认为8。

`splashRadius`: 选择动画的最大扩散半径,默认为24。

`splashSpeedInMilliseconds`: 选择动画的速度,默认为300毫秒。

`leftCornerRadius`: 标签栏左上角的圆角半径,默认为0。

`rightCornerRadius`: 标签栏右上角的圆角半径,默认为0。

`backgroundColor`: 标签栏的背景颜色,默认为白色。

`splashColor`: 选择动画的颜色,默认为紫色。

`activeColor`: 当前选中的标签项图标颜色,默认为深紫色。

`inactiveColor`: 未选中的标签项图标颜色,默认为黑色。

`notchAndCornersAnimation`: 控制凹槽和圆角出现的动画。

`notchSmoothness`: 凹槽的平滑度类型,默认为 NotchSmoothness.defaultEdge。

`gapLocation`: 标签栏项目间用于凹槽的空白位置,默认为 GapLocation.end。

`gapWidth`: 标签栏项目间的空白宽度,默认为72。

`elevation`: 标签栏的阴影高度,默认为8。

`shadow`: 导航栏周围的自定义阴影。

`safeAreaValues`: 指定是否避免特定边的系统入侵。

`hideAnimationCurve`: 隐藏动画的曲线,默认为 Curves.fastOutSlowIn。

`borderColor`: 导航栏周围的边框颜色,默认为透明。

`borderWidth`: 导航栏周围的边框宽度,默认为2.0。

`hideAnimationController`: 控制隐藏底部栏动画的控制器。

`backgroundGradient`: 背景渐变,如果指定则 backgroundColor 无效。

`blurEffect`: 是否应用模糊效果,仅当 backgroundColor 不完全不透明时有意义。

`blurFilter`: 应用模糊效果的滤镜。

`scaleFactor`: 缩放效果因子,默认为1,设为0可禁用缩放效果。


### NotificationListener  用于监听从 widget 树底部向上冒泡的 Notification
`NotificationListener<ScrollNotification>(
onNotification: onScrollNotification,
child
)`
  >它只会响应特定类型（T）的通知。
  > 
  >只有当通知的 runtimeType 是 T 的子类型时，才会触发 onNotification 回调
  > 
  >当符合条件的通知被捕获时，会调用 onNotification 回调函数
  > 通知可以通过 Notification.dispatch 方法来分发。

###  AutoSizeText 自动调整文本大小以完美适应其边界范围。