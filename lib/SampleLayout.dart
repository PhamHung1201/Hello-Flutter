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
            _getTitleSection()
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
          Text(" 1.5k", style: TextStyle(fontSize: 18.0),),
        ],
      ),
    );
  }
}
