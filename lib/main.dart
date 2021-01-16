import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StatefulWidget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Panda"),
        ),
        body: Homecontent(),
      ),
    );
  }
}

class Homecontent extends StatelessWidget {
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
    return Text("StatefulWidget");
  }
}
