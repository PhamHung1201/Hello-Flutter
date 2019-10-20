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
        home: RandomEnglishWord());
  }
}

class RandomEnglishWord extends StatefulWidget {
  @override
  State createState() {
    return RandomEnglishWordState();
  }
}

class RandomEnglishWordState extends State<RandomEnglishWord> {
  final words = <WordPair>[];
  final _checkedWords = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of English words"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushToSaveWordsScreen)
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        if (index >= words.length) {
          words.addAll(generateWordPairs().take(10));
        }
        return _buildRow(words[index], index);
      }),
    );
  }

  _pushToSaveWordsScreen() {

    final pageRoute = MaterialPageRoute(builder: (context){
      final listTitles = _checkedWords.map((wordPair) {
        return ListTile(
          title: Text(
            wordPair.asUpperCase,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )
        );
      });
      
      return Scaffold(
        appBar: AppBar(
          title: Text("Checked words"),
        ),
        body: ListView(children: listTitles.toList())
      );
    });

    Navigator.of(context).push(pageRoute);
  }

  Widget _buildRow(WordPair wordPair, int index) {
    final textColor = index % 2 == 0 ? Colors.red : Colors.blue;
    final isCheckedWord = _checkedWords.contains(wordPair);
    return ListTile(
      leading: Icon(
        isCheckedWord ? Icons.check_box : Icons.check_box_outline_blank,
        color: textColor,
      ),
      title: Text(
        wordPair.asUpperCase,
        style: TextStyle(fontSize: 18.0, color: textColor),
      ),
      onTap: () {
        setState(() {
          if (isCheckedWord) {
            _checkedWords.remove(wordPair);
          } else {
            _checkedWords.add(wordPair);
          }
        });
      },
    );
  }
}
