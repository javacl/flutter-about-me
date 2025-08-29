import 'package:design_system/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ArticlesScreen extends StatelessWidget {
  final void Function(int)? onArticleClick;

  const ArticlesScreen({super.key, this.onArticleClick});

  @override
  Widget build(BuildContext context) {
    return ThemedScaffold(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SafeArea(
          child: Center(
            child: InkWell(
              onTap: () {
                onArticleClick?.call(2);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: Text(
                      "Articles",
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
      ),
    );
  }
}
