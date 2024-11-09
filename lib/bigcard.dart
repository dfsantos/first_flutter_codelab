import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    final style = theme.textTheme.displayMedium!
        .copyWith(color: theme.colorScheme.onPrimary);

    final styleWithBold = theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimary, fontWeight: FontWeight.bold);

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              pair.first.toLowerCase(),
              style: style,
              semanticsLabel: pair.asPascalCase,
            ),
            Text(
              pair.second.toLowerCase(),
              style: styleWithBold,
            )
          ],
        ),
      ),
    );
  }
}
