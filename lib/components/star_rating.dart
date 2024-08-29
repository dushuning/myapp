import 'package:flutter/material.dart';

// 一个星星评分的组件封装，根据评分来计算点亮的星星个数
class StarRating extends StatefulWidget {

  // 当前评分
  final double rating;
  // 满分多少
  final double maxRating;
  // 自定义显示的图片
  final Widget unSelectedImage;
  final Widget selectedImage;
  // 显示的个数
  final int count;
  // 展示星星的大小
  final double size;
  // 选中或未被选中的颜色
  final Color unSelectedColor;
  final Color selectedColor;

  StarRating({
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 20,
    this.unSelectedColor = const Color(0xff808080),
    this.selectedColor = const Color(0xffff0000),
    Widget? unSelectedImage,
    Widget? selectedImage,
  }) : unSelectedImage = unSelectedImage ?? Icon(Icons.star, color: unSelectedColor, size: size),
        selectedImage = selectedImage ?? Icon(Icons.star, color: selectedColor, size: size);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        getUnselectedStar(),
        getSelectedStar()
      ],
    );
  }

  Widget getUnselectedStar(){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.count, (index) {
        return widget.unSelectedImage;
      }),
    );
  }

  Widget getSelectedStar() {
    // 1. 计算完整的star
    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating / oneValue).floor();

    double leftValue = (widget.rating -entireCount * oneValue);
    // 2. 剩余的一个star显示的比列
    double ratioLeft = leftValue / oneValue;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(entireCount + 1, (index) {
        if (index < entireCount) return widget.selectedImage;
        return ClipRect(
          clipper: MyRectClipper(width: widget.size * ratioLeft),
          child: widget.selectedImage,
        );
      }),
    );
  }

}

class MyRectClipper extends CustomClipper<Rect> {
  double width;
  MyRectClipper({required this.width});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(MyRectClipper oldClipper) {
    return width != oldClipper.width;
  }
  
}
