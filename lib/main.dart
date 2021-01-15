import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ProductItem(
                "黑寡妇", "不一样的寡姐", "http://39.105.189.216/html/player/img/1.png"),
            ProductItem("绿巨人", "绿巨人的成长之路",
                "http://39.105.189.216/html/player/img/2.png"),
            ProductItem("美国队长", "美国队长的爱恨情仇",
                "http://39.105.189.216/html/player/img/3.png"),
          ],
        ));
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imgUrl;

  ProductItem(this.title, this.subTitle, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1)),
      padding: EdgeInsets.all(4),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 8),
          Text(
            subTitle,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Image.network(imgUrl)
        ],
      ),
    );
  }
}
