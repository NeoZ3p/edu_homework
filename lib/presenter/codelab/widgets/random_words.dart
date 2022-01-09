import 'package:edu_homework/presenter/codelab/widgets/word_pair_tile.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatelessWidget {
  const RandomWords({
    Key? key,
    required this.suggestions,
    required this.saved,
    required this.onIconTap,
    required this.addSuggestions,
  }) : super(key: key);

  final List<WordPair> suggestions;
  final Set<WordPair> saved;
  final Function(bool, WordPair) onIconTap;
  final Function(int) addSuggestions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        var index = i ~/ 2;

        if (index >= suggestions.length) addSuggestions(10);

        var alreadySaved = saved.contains(suggestions[index]);

        return WordPairTile(
          pair: suggestions[index].asPascalCase,
          alreadySaved: alreadySaved,
          onIconTap: () => onIconTap(alreadySaved, suggestions[index]),
        );
      },
    );
  }
}
