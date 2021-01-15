import 'package:flutter/material.dart';

/**
 * 1 创建 main 函数
 * 2 执行 runApp 函数
 * 3 传入 Widget -> Text Widget
 *
 * 问题:  文字没有居中
 *        文字太小
 */

/// main 函数
void main() => MyApp();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Title")),
          ),
          body: ContentWidget()),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget(),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World",
      //Text 需要传入一个方向参数
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.yellow, fontSize: 40),
    );
  }
}
