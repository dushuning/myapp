import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/components/star_rating.dart';
import 'package:myapp/model/ItemsModel.dart';

import '../components/dashed_line.dart';

class HomeItem extends StatelessWidget {
  final ItemModel itemModel;
  HomeItem(this.itemModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 8, color: Color(0xffe2e2e2))
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getRankWidget(),
          SizedBox(height: 10,),
          getImageWidget(),
          SizedBox(height: 10,),
          getDescWidget(),
        ],
      ),
    );
  }

  // 获取排名显示的wedigt
  Widget getRankWidget(){
    return Container(
      // padding: EdgeInsets.fromLTRB(9, 4, 9, 4),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 9),
      // color 和 decoration 只能存在一个，不能同时存在，所以可以吧color放在和decoration的里面
      // color: Color.fromARGB(255, 238, 205, 144),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Text(
        "No.${itemModel.rank}",
        style: const TextStyle(fontSize: 18,color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  Widget getImageWidget(){
    return Row(
      // 设置交叉轴的对齐方式，这是row，主轴是x轴，所以交叉轴就是y轴，y轴从上到下排列
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getImageShow(),
        // 灵活显示所有的内容
        getDetailDesc(),
        Container(
          width: 1,
          height: 100,
          child: DashedLine(axis: Axis.vertical, dashedWidth: 1, dashedHeight: 5, count: 12, color: Color(0xffaaaaaa),),
        ),
        getWishWidget(),
      ],
    );
  }

  // 设置图片的高度以及圆角
  Widget getImageShow(){
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.asset(itemModel.url, height: 150,),
    );
  }

  Widget getDetailDesc(){
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getMovieName(),
            getMovieRat(),
            getMovieIntroduce()
          ],
        ),
      ),
    );
  }

  // 获取电影名称
  Widget getMovieName(){
    return Stack(
      children: [
        const Icon(Icons.play_circle_outline, color: Colors.red, size: 24,),
        Text.rich(TextSpan(
          children: [
            TextSpan(text: "      ${itemModel.title}", style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700)),
            const TextSpan(text: "(1994)", style: TextStyle(color: Colors.black54,fontSize: 18))
          ]
        )),
      ],
    );
  }

  // 获取电影评分
  Widget getMovieRat(){
    return Row(
      children: [
        StarRating(rating: double.parse(itemModel.rate), selectedColor: Colors.orange, size: 20,),
        Text(itemModel.rate, style: TextStyle(color: Colors.grey),)
      ],
    );
  }

  // 获取电影简介
  Widget getMovieIntroduce(){
    return Text(itemModel.id, style: TextStyle(fontSize: 16),maxLines: 2, overflow: TextOverflow.ellipsis,);
  }

  // 设置想看的展示
  Widget getWishWidget(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: const Column(
        children: [
          Icon(Icons.heart_broken, color: Color.fromARGB(255, 235, 170, 60),),
          SizedBox(height: 8,),
          Text("想看", style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 235, 170, 60)),),
        ],
      ),
    );
  }

  // 获取原始电影描述
  Widget getDescWidget(){
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffeeeeee),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(itemModel.cover,style: const TextStyle(fontSize: 18,color: Colors.black54),),
    );
  }
}
