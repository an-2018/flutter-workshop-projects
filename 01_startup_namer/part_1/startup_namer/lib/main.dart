import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "Wellcome to the Flutter Workshop",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Is it The Flutter Workshop"),
          ),
          body: Center(
            child: Text(wordPair.asPascalCase),
          )),
    );
  }
}
