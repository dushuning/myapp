import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: DUHomePge(),
    );
  }
}

class DUHomePge extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是第一个flutter程序"),
      ),
      body: DUCenterBody(),
    );
  }
}

class DUCenterBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello World！",
        style: TextStyle(
            fontSize: 30,
            color: Colors.orange
        ),
      ),
    );
  }
}