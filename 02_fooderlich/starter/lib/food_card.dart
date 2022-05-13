import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  FoodCard({Key? key}) : super(key: key);
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';
  final textStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(),
    );
  }
}
