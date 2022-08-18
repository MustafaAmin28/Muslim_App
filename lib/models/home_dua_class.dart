import 'package:flutter/material.dart';

class HomeDuaCardItem {
  final String title, subtitle;
  final IconData duaIcon;
  final Widget newPage;

  const HomeDuaCardItem({
    required this.title,
    required this.subtitle,
    required this.duaIcon,
    required this.newPage,
  });
}
