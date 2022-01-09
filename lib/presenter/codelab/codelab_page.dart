import 'package:edu_homework/presenter/codelab/widgets/random_words.dart';
import 'package:edu_homework/presenter/codelab/widgets/saved_suggestions_page.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class CodelabPage extends StatefulWidget {
  const CodelabPage({Key? key}) : super(key: key);

  @override
  State<CodelabPage> createState() => _CodelabPageState();
}

class _CodelabPageState extends State<CodelabPage> {
  final _saved = <WordPair>{};
  final _suggestions = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(PageNames.codelabPage),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () => _pushSaved(context),
            tooltip: PageNames.savedSuggestionsPage,
          ),
        ],
      ),
      body: RandomWords(
        suggestions: _suggestions,
        saved: _saved,
        onIconTap: _onIconTap,
        addSuggestions: _addSuggestions,
      ),
    );
  }

  void _addSuggestions(int count) {
    _suggestions.addAll(generateWordPairs().take(count));
  }

  void _onIconTap(bool alreadySaved, WordPair pair) {
    setState(() {
      if (alreadySaved) {
        _saved.remove(pair);
      } else {
        _saved.add(pair);
      }
    });
  }

  void _pushSaved(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          var tiles = _saved.map(
            (pair) => ListTile(
              title: Text(pair.asPascalCase),
            ),
          );

          var divided = tiles.isNotEmpty
              ? ListTile.divideTiles(
                  context: context,
                  tiles: tiles,
                ).toList()
              : <Widget>[];

          return SavedSuggestionsPage(divided: divided);
        },
      ),
    );
  }
}
