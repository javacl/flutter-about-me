import 'package:design_system/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return ThemedScaffold(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(16),
                  child: Text(
                    "Article",
                    style: Theme.of(context).textTheme.bodyLarge,
                    selectionColor: Theme.of(context).colorScheme.onSurface,
                    textAlign: TextAlign.center,
                  ),
                ),
                Icon(
                  Symbols.account_balance_wallet_rounded,
                  weight: 300,
                  fill: 1,
                  color: Theme.of(context).colorScheme.primary,
                  size: 64,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
