import 'package:flutter/material.dart';

///  一个虚线的组件封装
class DashedLine extends StatelessWidget {
  // 虚线的方向 水平或者垂直
  final Axis axis;
  // 虚线的宽度
  final double dashedWidth;
  // 虚线的高度
  final double dashedHeight;
  // 虚线的个数
  final int count;
  // 虚线的颜色
  final Color color;

  // 构成函数中赋值默认值的话必须是常量
  const DashedLine({super.key,
    required this.axis,
    this.color = Colors.grey,
    this.count = 12,
    this.dashedWidth = 1,
    this.dashedHeight = 1
  });

  @override
  Widget build(BuildContext context) {
    // 使用layoutBuilder来获取父组件的宽和高
    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      direction: axis,
      children: List.generate(count, (index) {
        return Container(
          width: dashedWidth,
          height: dashedHeight,
          color: color,
        );
      }),
    );
  }
}
