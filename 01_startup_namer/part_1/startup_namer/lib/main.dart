import 'package:flutter/material.dart';

void main() {
  runApp(HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wellcome to the Flutter Workshop",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Is it The Flutter Workshop"),
          ),
          body: const Center(
            child: Text("Hello there, how are you?"),
          )),
    );
  }
}
