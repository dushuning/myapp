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

class DUCenterBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyChecokBoxState();
  }
}

class MyChecokBoxState extends State<DUCenterBody> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: flag,
                onChanged: (value){
                  setState(() {
                    flag = value!;
                  });
                }
            ),
            Text("同意协议", style: TextStyle(fontSize: 20,color: Colors.orange),)
          ],
        )
    );
  }

}