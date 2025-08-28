import 'package:flutter/material.dart';

class ProjectBottomNavigation extends StatelessWidget {
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final List<Widget> items;

  const ProjectBottomNavigation({
    super.key,
    this.backgroundColor = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(0)),
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
    );
  }
}

class ProjectBottomNavigationItem extends StatelessWidget {
  final Widget selectedIcon;
  final Widget unSelectedIcon;
  final String label;
  final bool selected;
  final bool enabled;
  final double iconSize;
  final TextStyle? labelStyle;
  final Color selectedContentColor;
  final Color unselectedContentColor;
  final Color selectedIconBackgroundColor;
  final Color unSelectedIconBackgroundColor;
  final EdgeInsetsGeometry contentPadding;
  final double betweenSpacing;
  final VoidCallback onTap;

  const ProjectBottomNavigationItem({
    super.key,
    required this.selectedIcon,
    required this.unSelectedIcon,
    required this.label,
    this.selected = false,
    this.enabled = true,
    this.iconSize = 24,
    this.labelStyle,
    this.selectedContentColor = Colors.white,
    this.unselectedContentColor = Colors.black,
    this.selectedIconBackgroundColor = Colors.blue,
    this.unSelectedIconBackgroundColor = Colors.transparent,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 16),
    this.betweenSpacing = 4,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: enabled ? onTap : null,
        child: Padding(
          padding: contentPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: selected
                      ? selectedIconBackgroundColor
                      : unSelectedIconBackgroundColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: SizedBox(
                  height: iconSize,
                  width: iconSize,
                  child: selected ? selectedIcon : unSelectedIcon,
                ),
              ),
              SizedBox(height: betweenSpacing),
              Text(
                label,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: selected
                      ? selectedContentColor
                      : unselectedContentColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
