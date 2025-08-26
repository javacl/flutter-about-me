import 'package:design_system/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: lightPrimary,
  onPrimary: lightOnPrimary,
  primaryContainer: lightPrimaryContainer,
  onPrimaryContainer: lightOnPrimaryContainer,
  secondary: lightSecondary,
  onSecondary: lightOnSecondary,
  secondaryContainer: lightSecondaryContainer,
  onSecondaryContainer: lightOnSecondaryContainer,
  tertiary: lightTertiary,
  onTertiary: lightOnTertiary,
  tertiaryContainer: lightTertiaryContainer,
  onTertiaryContainer: lightOnTertiaryContainer,
  error: lightError,
  onError: lightOnError,
  errorContainer: lightErrorContainer,
  onErrorContainer: lightOnErrorContainer,
  surface: lightSurface,
  onSurface: lightOnSurface,
  onSurfaceVariant: lightOnSurfaceVariant,
  outline: lightOutline,
  outlineVariant: lightOutlineVariant,
  shadow: lightShadow,
  scrim: lightScrim,
  inverseSurface: lightInverseSurface,
  onInverseSurface: lightOnInverseSurface,
  inversePrimary: lightInversePrimary,
  surfaceTint: lightPrimary,
  surfaceContainer: lightSurfaceContainer,
  surfaceContainerLow: lightSurfaceContainerLow,
);

const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: darkPrimary,
  onPrimary: darkOnPrimary,
  primaryContainer: darkPrimaryContainer,
  onPrimaryContainer: darkOnPrimaryContainer,
  secondary: darkSecondary,
  onSecondary: darkOnSecondary,
  secondaryContainer: darkSecondaryContainer,
  onSecondaryContainer: darkOnSecondaryContainer,
  tertiary: darkTertiary,
  onTertiary: darkOnTertiary,
  tertiaryContainer: darkTertiaryContainer,
  onTertiaryContainer: darkOnTertiaryContainer,
  error: darkError,
  onError: darkOnError,
  errorContainer: darkErrorContainer,
  onErrorContainer: darkOnErrorContainer,
  surface: darkSurface,
  onSurface: darkOnSurface,
  onSurfaceVariant: darkOnSurfaceVariant,
  outline: darkOutline,
  outlineVariant: darkOutlineVariant,
  shadow: darkShadow,
  scrim: darkScrim,
  inverseSurface: darkInverseSurface,
  onInverseSurface: darkOnInverseSurface,
  inversePrimary: darkInversePrimary,
  surfaceTint: darkPrimary,
  surfaceContainer: darkSurfaceContainer,
  surfaceContainerLow: darkSurfaceContainerLow,
);

const AppBarTheme lightAppBarTheme = AppBarTheme(
  backgroundColor: lightSurface,
  foregroundColor: lightSurface,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: lightSurface,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: lightSurface,
    systemNavigationBarIconBrightness: Brightness.dark,
  ),
);

const AppBarTheme darkAppBarTheme = AppBarTheme(
  backgroundColor: darkSurface,
  foregroundColor: darkSurface,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: darkSurface,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: darkSurface,
    systemNavigationBarIconBrightness: Brightness.light,
  ),
);

class ThemedScaffold extends StatelessWidget {
  final Widget child;

  const ThemedScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: colorScheme.surface,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: colorScheme.surface,
        systemNavigationBarIconBrightness: isDark
            ? Brightness.light
            : Brightness.dark,
      ),
      child: child,
    );
  }
}
