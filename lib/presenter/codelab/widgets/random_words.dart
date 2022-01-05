import 'package:edu_homework/presenter/codelab/widgets/word_pair_tile.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatelessWidget {
  const RandomWords({
    Key? key,
    required this.suggestions,
    required this.saved,
    required this.onIconTap,
  }) : super(key: key);

  final List<WordPair> suggestions;
  final Set<WordPair> saved;
  final Function(bool, WordPair) onIconTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        var index = i ~/ 2;

        if (index >= suggestions.length) {
          suggestions.addAll(generateWordPairs().take(10));
        }

        return _buildRow(suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    var alreadySaved = saved.contains(pair);

    return WordPairTile(
      pair: pair.asPascalCase,
      saved: saved,
      alreadySaved: alreadySaved,
      onIconTap: () => onIconTap(alreadySaved, pair),
    );
  }
}
