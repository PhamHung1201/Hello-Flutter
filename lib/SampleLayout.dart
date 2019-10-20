import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SampleLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom layout in Flutter"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset("images/sunflowers.png", fit: BoxFit.cover),
            _getTitleSection(),
            _fourButtonSection(),
            _bottomTextSection()
          ],
        ),
      ),
    );
  }

  Widget _getTitleSection() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text("Here is the header",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))),
                Text("Here is the content",
                    style: TextStyle(fontSize: 18.0, color: Colors.grey[600]))
              ],
            ),
          ),
          Icon(Icons.favorite, color: Colors.red),
          Text(
            " 1.5k",
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }

  Widget _fourButtonSection() {
    return Container(
      margin: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _actionButton(Icons.home, "Home"),
          _actionButton(Icons.arrow_back, "Back"),
          _actionButton(Icons.arrow_forward, "Next"),
          _actionButton(Icons.share, "Share")
        ],
      ),
    );
  }

  Widget _actionButton(IconData icon, String title) {
    final Color tintColor = Colors.blue;
    return Column(
      children: <Widget>[
        Icon(icon, color: tintColor),
        Text(title,
            style: TextStyle(
                color: tintColor, fontSize: 16.0, fontWeight: FontWeight.w600))
      ],
    );
  }

  Widget _bottomTextSection() {
    return Container(
      margin: const EdgeInsets.all(12.0),
      child: Text(
          '''I am an Android Developer with 4 years of experience in Android Native development and almost 1 year as a Java Spring back-end developer. My strengths are Android framework, Clean architecture, Design patterns and Third-party. I've also got a good experience of working with product development models as Agile, Extreme programming. In addition, I am familiar with different types of automation testing such as Unit testing, Instrument testing, Test driven development (TDD) and also with concepts in Continuous integration and deployment - CI/CD''',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.grey[850]
        ),
      ),
    );
  }
}
