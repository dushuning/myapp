import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("测试"),),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () { print("按钮被点击了"); },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.people, color: Colors.black,),
          SizedBox(width: 6,),
          Text("我是按钮", style: TextStyle(fontSize: 20, color: Colors.green),),

        ],
      ),
      style: ButtonStyle(
        // backgroundColor: ,
      ),
    );
  }
}






