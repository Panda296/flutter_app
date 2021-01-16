import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StatefulWidget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("LifeCycle"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextRichDemo();
  }
}

class textDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "定风波--苏轼\n莫听穿林打叶声,何妨吟啸且徐行.竹杖芒鞋轻胜马,谁怕?一蓑烟雨任平生.",
        style: TextStyle(fontSize: 18, color: Colors.orange),
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textScaleFactor: 2,
      ),
    );
  }
}

class TextRichDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: "定风波",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        TextSpan(text: "  苏轼", style: TextStyle(fontSize: 18)),
        TextSpan(
            text: "\n莫听穿林打叶声,何妨吟啸且徐行.竹杖芒鞋轻胜马,谁怕?一蓑烟雨任平生.",
            style: TextStyle(
              fontSize: 20,
            )),
        TextSpan(
            text: "竹杖芒鞋轻胜马,谁怕?",
            style: TextStyle(fontSize: 20, color: Colors.purple)),
        TextSpan(
          text: "一蓑烟雨任平生",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ]),
      textAlign: TextAlign.center,
    );
  }
}
