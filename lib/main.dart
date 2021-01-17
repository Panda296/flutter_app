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
        body: LoginWidget(),
      ),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFieldWidgetState();
  }
}

class TextFieldWidgetState extends State {
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

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginWidgetState();
}

class LoginWidgetState extends State {
  String username;
  String psd;
  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    icon: Icon(Icons.people),
                    labelText: "User_name",
                  ),
                  onSaved: (value) => this.username = value,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  onSaved: (value) => this.psd = value,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    icon: Icon(Icons.lock),
                    labelText: "PassWorld",
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                      color: Colors.lightBlueAccent,
                      child: Text("注册"),
                      onPressed: () {
                        print('进行注册');
                        key.currentState.save();
                        print('username:$username  password:$psd');
                      }),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.lightBlueAccent,
                    child: Text("登录"),
                    onPressed: () {
                      print('进行登录');
                    },
                  ),
                )
              ],
            )),
      );
}
