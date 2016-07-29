# flexbox最佳实例

## 移动端兼容方案

    .flex-wrap {
      /* 定义元素为flexbox显示 */
      display: -webkit-box;
      display: -webkit-flex;
      display: flex;
    }

    .flew-item {
      /* 给子元素赋予自由伸缩能力 */
      -webkit-box-flex: 1;
      -webkit-flex: 1;
      flex: 1;
    }
## 用flex做提示icon

flex父元素的“align-items”属性。 指定元素沿侧轴对齐方式 align-item: flex-start | flex-end | center | space-between | space-around | stretch;


## 用flex做列表元素

## 用flex做tab
做均分的tab，应该是flexbox最常见的一个功能了，实现原理很简单，只需要给“父元素”，“子元素”分别赋予“display：flex”,”flex：1″即可。子元素的宽度不会根据内容的长短而发生改变。如下图所示，前台同学增加或删减tab数量，只需要增减DOM结构即可，无需样式的修改。

hack:
重点兼容TIPS:  在旧版的规范中，使用比例伸缩布局时，子元素的内容长短不同会导致无法“等分”，这个时候，我们需要给子元素设置一个“width:0%”来解决问题。 ★重点兼容TIPS:  不要给flexbox里的子元素设置“margin:auto”的属性，在部分安卓机下，它会导致该元素的宽度撑开到100%占位

## 用flex做垂直居中(单/多)
其实都只用到了flexbox的基础属性+“align-items”属性。千万不要以为结束了，flexbox还可以做更多的事。例如一直很困扰我们的“垂直居中”：flexbox可以轻松实现不定宽高，不限数量的元素“水平+垂直居中”在屏幕中。
用到了flexbox的另外一个属性：指定元素沿主轴对齐方式 justify-content: flex-start | flex-end | center space-between | space-around; 将“沿着主轴对齐方式+沿着侧轴对齐的方式”设置为居中，无论子元素是什么形态，都可以随时随地的“水平垂直居中”了。
