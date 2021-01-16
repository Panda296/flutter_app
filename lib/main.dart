import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StatefulWidget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("StatefulWidget"),
        ),
        body: Center(child: ContentWidget()),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ContentWidgetState();
}

class ContentWidgetState extends State {
  int conut = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      // Column 默认占据很大内容,从上到下排列,这个属性让他居中
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "当前计数 : $conut",
          style: TextStyle(color: Colors.orange, fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                print("Button Clicked");
                setState(() {
                  conut++;
                });
              },
              child: Text("计数增加"),
            ),
            SizedBox(
              width: 10,
            ),
            RaisedButton(
              onPressed: () {
                conut = 0;
                setState(() {});
              },
              child: Text("归零"),
            ),
          ],
        )
      ],
    );
  }
}
