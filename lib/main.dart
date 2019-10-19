import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is my first Flutter App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is Header title"),
        ),
        body: Center(
            child: RandomEnglishWord()
        ),
      ),
    );
  }
}

class RandomEnglishWord extends StatefulWidget {

  @override
  State createState() {
    return RandomEnglishWordState();
  }
}

class RandomEnglishWordState extends State<RandomEnglishWord> {

  @override
  Widget build(BuildContext context) {
    return Text(
      WordPair.random().asUpperCase,
      style: TextStyle(fontSize: 22.0),
    );
  }
}
