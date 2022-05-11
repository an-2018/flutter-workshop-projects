import 'package:flutter/material.dart';

class ContentDescription extends StatelessWidget {
  const ContentDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
          Text('Flutter Web \nThe Basics', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 80, height: 0.9),),
          SizedBox(height: 30,),
          Text('In this workshop we will build a sample home page💪', style: TextStyle(fontSize: 21, height: 1.7),)
        ],
      ),
    );
  }
}
