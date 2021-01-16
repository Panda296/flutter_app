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

class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print("HomeContent createState");
    return HomeContentState();
  }

  HomeContent() {
    print("HomeContent 构造函数");
  }
}

/// State 对象在 Flutter 中会多次利用
class HomeContentState extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print("HomeContentState build");
    return Center(
      child: Column(
        children: [
          RaisedButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text("Add"),
          ),
          Text(
            "LifeCycle $count",
            style: TextStyle(fontSize: 24, color: Colors.amber),
          ),
        ],
      ),
    );
  }

  HomeContentState() {
    print("HomeContentState Constructor ");
  }
  @override
  void initState() {
    super.initState();
    print("InitState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("HomeContentState  didChangeDependencies 本身状态发生改变事调用");
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("HomeContentState didUpdateWidget 父类发生改变时调用");
  }
}
