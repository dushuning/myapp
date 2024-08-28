
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/tabbaritem.dart';
import 'pages/group.dart';
import 'pages/home.dart';
import 'pages/market.dart';
import 'pages/profile.dart';
import 'pages/shuyinying.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        // 去掉水波纹效果和高亮效果
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.blueGrey, // 底部导航栏的背景色
        selectedItemColor: Colors.white, // 选中项的颜色
        unselectedItemColor: Colors.grey, // 未选中项的颜色
        showUnselectedLabels: true, // 是否显示未选中项的标签
        showSelectedLabels: true, // 是否显示选中项的标签
      )// ),
      ),
      home: MyAppFirstPage(),
    );
  }
}

class MyAppFirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppFirstPageState();
  }
}
class MyAppFirstPageState extends State<MyAppFirstPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("主页"),
        // backgroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.blue,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          MoviePage(),
          GroupPage(),
          MarketPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          TabBarItem1("首页",""),
          TabBarItem2("书影音",""),
          TabBarItem3("群组",""),
          TabBarItem4("市集",""),
          TabBarItem5("我的",""),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}