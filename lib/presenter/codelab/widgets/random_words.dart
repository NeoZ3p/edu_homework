import 'package:edu_homework/presenter/codelab/widgets/word_pair_tile.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({
    required this.saved,
    required this.onIconTap,
    Key? key,
  }) : super(key: key);

  final Set<WordPair> saved;
  final void Function(bool, WordPair) onIconTap;

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  late List<WordPair> _suggestions;
  late ScrollController _controller;

  @override
  void initState() {
    _suggestions = [];
    _controller = ScrollController()..addListener(_scrollListener);

    _addSuggestions(20);

    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _controller,
      itemCount: _suggestions.length,
      separatorBuilder: (_, __) => const Divider(),
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        final alreadySaved = widget.saved.contains(_suggestions[i]);

        return WordPairTile(
          pair: _suggestions[i].asPascalCase,
          alreadySaved: alreadySaved,
          onIconTap: () => widget.onIconTap(alreadySaved, _suggestions[i]),
        );
      },
    );
  }

  void _scrollListener() {
    if (_controller.position.extentAfter == 0) {
      _addSuggestions(10);
    }
  }

  void _addSuggestions(int count) {
    setState(() {
      _suggestions.addAll(generateWordPairs().take(count));
    });
  }
}
