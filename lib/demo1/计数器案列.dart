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
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: HomeContent("你好啊，Flutter"),
    );
  }
}

class HomeContent extends StatefulWidget {
  final String msg;
  HomeContent(this.msg);
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomeContent> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Icon(Icons.add)
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: Icon(Icons.remove)
              ),
            ],
          ),
          Text("当前计数:$count", style: TextStyle(fontSize: 20, color: Colors.black),),
          Text("父组件传递的数据：${widget.msg}", style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}