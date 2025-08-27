import 'package:design_system/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                    "Profile",
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
