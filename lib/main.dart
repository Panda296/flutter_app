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
    return LocalImageDemo();
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

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
            child: Text("RaisedButton"),
            onPressed: () => print("RaisedButton")),
        FlatButton(
            child: Text("FlatButton"), onPressed: () => print("FlatButton")),
        OutlineButton(
            child: Text("OutlineButton"),
            onPressed: () => print("OutlineButton")),
        FloatingActionButton(
            child: Text("FloatingActionButton"),
            onPressed: () => print("FloatingActionButton")),
      ],
    );
  }
}

class CustomButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.orange,
        child: Row(
          // 这个属性表示尽可能小,不加的话默认 Row 会占据一行
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.ad_units_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 6,
            ),
            Text("Button"),
          ],
        ),
        onPressed: () => print("object"),
        // 通过 shape 属性来添加圆角
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

class NetWorkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.lightBlue,
        width: 250,
        height: 300,
        // alignment: Alignment.bottomLeft,
        child: Image.network(
          "http://39.105.189.216/html/player/img/4.png",
          repeat: ImageRepeat.repeatY,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class LocalImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(child: Image.asset("assets/images/img_1.jpg")),
    );
  }
}
