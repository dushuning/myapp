import 'package:flutter/material.dart';
import 'package:myapp/components/star_rating.dart';

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("群组"),),
      body: Center(
        child: StarRating(rating: 8.9, selectedColor: Colors.orange,),
      ),
    );
  }
}
