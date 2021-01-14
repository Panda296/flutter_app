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
void main() {
  runApp(Text(
    "Hello World",
    //Text 需要传入一个方向参数
    textDirection: TextDirection.ltr,
  ));
}
