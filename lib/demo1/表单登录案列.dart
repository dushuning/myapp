import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("登录"),),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: LoginDemo(),
        ),
      ),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginDemoState();
  }
}
class LoginDemoState extends State<LoginDemo> {
  late String username;
  late String password;

  GlobalKey<FormState> globalObjectKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: globalObjectKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              // 自动验证，分为不同的模式
              autovalidateMode: AutovalidateMode.always,
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                labelText: "请输入账户",
              ),
              onSaved: (value) {
                this.username = value!;
              },
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return "用户名不能为空";
                }
                return null;
              },
            ),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: "密码"
                ),
                onSaved: (value) {
                  this.password = value!;
                },
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "密码不能为空";
                  }
                  return null;
                }
            ),
            SizedBox(height: 20,),
            Container(
              height: 44,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    globalObjectKey.currentState?.save();
                    globalObjectKey.currentState?.validate();
                    print("按钮被点击了,username:$username, password:$password");
                  },
                  child: Text("登录", style: TextStyle(fontSize: 20,color: Colors.white),)
              ),
            )
          ],
        )
    );
  }
}