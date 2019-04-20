import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(new MaterialApp(
   home: RandomWords(),
  ));
}


class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => new _RandomWordsState();
 }
class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[

  ];

  final _saved = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
       appBar: new AppBar(
        title: new Text("Lista Infinita"),
        centerTitle: true,
        actions: <Widget>[
           new IconButton(
             icon: new Icon(Icons.list),
             onPressed: (){
               _pushSaved();
             },
          )
       ],
     ),
     body: _buildSuggestions(),
   );
  }

  void _pushSaved(){
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context){
          final titles = _saved.map(
            (pair){
              return new ListTile(
                title: new Text(pair.asPascalCase),
              );
            }
          );
          final divide = ListTile.divideTiles(
            tiles: titles,
            context: context
          ).toList();
          return new Scaffold(
            appBar: new AppBar(
              title: new Text("Guardadas"),
            ),
            body: new ListView(
              children: divide,
            ),
          );
        }
      )
    );
  }

  Widget _buildSuggestions(){
    // Solamente para los hijos que estan visibles dentro la aplicacion
    return new ListView.builder(
      itemBuilder: (context,i){
          if (i.isOdd) return new Divider();
          print(i);
          final index = i ~/ 2;
          if(index >= _suggestions.length ){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair){
    final bool alreadySaved = _saved.contains(pair);
    
    return ListTile(
      title: new Text(pair.asPascalCase),
      trailing: new Icon( 
        alreadySaved ? Icons.favorite: Icons.favorite_border, color: Colors.redAccent,
        ),
      onTap: (){
        setState(() {
          if (!alreadySaved){
               _saved.add(pair);          
          }else{
              _saved.remove(pair);          
          }
        });
      },  
      );
  }
}