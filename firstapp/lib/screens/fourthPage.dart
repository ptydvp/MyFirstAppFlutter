import 'package:firstapp/screens/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: fPage(),
    );
  }
}

class fPage extends StatefulWidget {
  const fPage({Key? key}) : super(key: key);

  @override
  _fPageState createState() => _fPageState();
}

class _fPageState extends State<fPage> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);
  final _saved = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FirstPage();
              }));
            },
            icon: Icon(Icons.arrow_back_ios),
          );
        }),
        actions: [
          IconButton(
            onPressed: () {
              _pushSaved();
            },
            icon: Icon(Icons.list),
          ),
        ],
      ),
      // body: Container(
      //   padding: EdgeInsets.all(10),
      //   child: Column(
      //     children: [
      //       Row(
      //         children: [
      //           Expanded(
      //             child: ElevatedButton.icon(
      //               onPressed: () {
      //                 Navigator.push(context,
      //                     MaterialPageRoute(builder: (context) {
      //                   return FirstPage();
      //                 }));
      //               },
      //               icon: Icon(Icons.catching_pokemon),
      //               label: Text('back to first page'),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Center(
      //         child: _buildSuggestions(),
      //       )
      //     ],
      //   ),
      // ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return Scaffold(
              appBar: AppBar(title: Text('Saved Suggestions')),
              body: ListView(
                children: divided,
              ));
        },
      ),
    );
  }
}
