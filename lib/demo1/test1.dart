import 'package:flutter/material.dart';

void main() {

  // 程序入口 执行runApp函数
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              title: const Text("第一个Flutter程序")
          ),
          body: const Center(
            child: Text(
              "我是杜书宁，我想赵凤英了",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange
              ),
            ),
          ),
        ),
      )
  );
}