# jianshu_fe

## 当flutter中的page未设置`AppBar`的时候，页面的内容会直接显示在状态栏中

解决方法： 
  1. 首先获取状态栏的高度
    ```dart
      import 'dart:ui';
      MediaQueryData.fromWindow(window).padding.top
    ````
  2. 设置`AppBar`的高度
    ```dart
      Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(MediaQueryData.fromWindow(window).padding.top),
        child:SafeArea(
          top: true,
          child: Offstage(),
        ),
      )
    );
    ```