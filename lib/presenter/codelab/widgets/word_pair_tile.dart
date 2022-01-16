import 'package:flutter/material.dart';

class WordPairTile extends StatelessWidget {
  const WordPairTile({
    required this.pair,
    required this.alreadySaved,
    required this.onIconTap,
    Key? key,
  }) : super(key: key);

  final String pair;
  final bool alreadySaved;
  final VoidCallback onIconTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onIconTap,
      title: Text(pair),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
        semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
      ),
    );
  }
}
