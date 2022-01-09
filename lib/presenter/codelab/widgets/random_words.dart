import 'package:edu_homework/presenter/codelab/widgets/word_pair_tile.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({
    Key? key,
    required this.saved,
    required this.onIconTap,
  }) : super(key: key);

  final Set<WordPair> saved;
  final void Function(bool, WordPair) onIconTap;

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  late List<WordPair> _suggestions;

  @override
  void initState() {
    _suggestions = [];

    _addSuggestions(10);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        var index = i ~/ 2;

        if (index >= _suggestions.length) _addSuggestions(10);

        var alreadySaved = widget.saved.contains(_suggestions[index]);

        return WordPairTile(
          pair: _suggestions[index].asPascalCase,
          alreadySaved: alreadySaved,
          onIconTap: () => widget.onIconTap(alreadySaved, _suggestions[index]),
        );
      },
    );
  }

  void _addSuggestions(int count) {
    _suggestions.addAll(generateWordPairs().take(count));
  }
}
