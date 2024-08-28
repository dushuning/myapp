import 'package:flutter/material.dart';
import 'package:myapp/components/dashed_line.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("书影音"),),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          // color: Colors.green,
          child: const DashedLine(axis: Axis.vertical, dashedHeight: 10, dashedWidth: 1,count: 6, color: Colors.red,),
        ),
      ),
    );
  }
}
