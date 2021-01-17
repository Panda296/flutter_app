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
        body: Register(),
      ),
    );
  }
}

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = "默认值";
    controller.addListener(() {
      print("controller 监听到变化  ${controller.value}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: "请输入您的账号",
              labelStyle: TextStyle(fontSize: 20, color: Colors.lightGreen),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(8)),
              hintText: "username",
              // filled: true, // 是否填充背景
              // fillColor: Colors.orange, // 填充背景色
            ),
            onChanged: (value) => print("当前输入的值 $value"),
            onSubmitted: (value) => print("当前提交的值 $value"),
            controller: controller,
          )
        ],
      ),
    );
  }
}
