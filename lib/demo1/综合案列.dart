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
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FirstProdItem("英雄联盟","你最喜欢什么英雄呢","https://img2.baidu.com/it/u=1494503781,1694760170&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500"),
        FirstProdItem("穿越火线","你最喜欢什么模式呢",'https://img.wo.cc/upload/Img/2021/08/18/b1e24a3477dd7b37a27210b7acedf631.jpg'),
        FirstProdItem("黑神化-悟空","你最喜欢那一关呢",'https://img.cnanzhi.com/upload/default/20210811/89d21f058d097c3fcecc6163501ddfaa.jpg'),
      ],
    );
  }
}

class FirstProdItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;
  FirstProdItem(this.title,this.desc,this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(
                width: 3,
                color: Colors.green
            )
        ),
        child: Column(
          // 调整交叉轴的方向
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 20,color: Colors.orange),),
            SizedBox(height: 8,),
            Text(desc, style: TextStyle(fontSize: 18,color: Colors.blue),),
            SizedBox(height: 8,),
            Image.network(imageUrl)
          ],
        )
    );
  }
}


