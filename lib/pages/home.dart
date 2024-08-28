import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/network/httpUtils.dart';
import 'package:myapp/pages/home_item.dart';

import '../model/ItemsModel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("首页"),),),
      body: HomeBody(),
    );
  }
}
class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<ItemModel> movies = [
    ItemModel(title: "肖申克的救赎",rate: "9.7",url: "assets/images/xiaoshenke.webp",cover: "hope is dangerous",id: "犯罪 剧情/弗兰克·德拉邦特/蒂姆·罗宾斯/摩根·弗里曼/鲍勃·冈顿",playable: false,rank: "1"),
    ItemModel(title: "霸王别姬",rate: "9.6",url: "assets/images/bawang.webp",cover: "大家都是程蝶衣",id: "剧情 爱情 同性/陈凯歌/张国荣/张丰毅/巩俐",playable: false,rank: "2"),
    ItemModel(title: "这个杀手不太冷",rate: "9.5",url: "assets/images/shashou.webp",cover: "一部搞笑的犯罪片",id: "剧情 动作 犯罪/吕克·贝松/让·雷诺/娜塔莉·波特曼/加里·奥德曼",playable: false,rank: "3"),
    ItemModel(title: "阿甘正传",rate: "9.5",url: "assets/images/agan.webp",cover: "经典美国励志电影",id: "剧情 爱情/罗伯特·泽米吉斯/汤姆·汉克斯/罗宾·怀特/加里·辛尼斯",playable: false,rank: "4"),
    ItemModel(title: "美丽人生",rate: "9.4",url: "assets/images/meili.webp",cover: "满怀希望，美丽人生",id: "剧情 喜剧 爱情 战争/罗伯托·贝尼尼/罗伯托·贝尼尼/尼可莱塔·布拉斯基/乔治·坎塔里尼",playable: false,rank: "5"),
    ItemModel(title: "辛德勒的名单",rate: "9.4",url: "assets/images/xindele.webp",cover: "拯救一个人，就是拯救了无数人",id: "剧情 历史 战争/史蒂文·斯皮尔伯格/连姆·尼森/本·金斯利/拉尔夫·费因斯",playable: false,rank: "6"),
  ];
  @override
  void initState() {
    super.initState();
    // HttpRequest.request(
    //     "https://movie.douban.com/j/search_subjects?type=movie&tag=%E7%83%AD%E9%97%A8&page_limit=50&page_start=0",
    //      params: Map()).then((res){
    //        // print(res);
    //        // var jsonResp = jsonDecode(res.data);
    //        // movies = (jsonResp['subjects'] as List)
    //        //     .map((data) => ItemModel.fromJson(data))
    //        //     .toList();
    // }).catchError((err) {
    //   print(err);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext context, int index) {
        return HomeItem(movies[index]);
      })
    );
  }
}

