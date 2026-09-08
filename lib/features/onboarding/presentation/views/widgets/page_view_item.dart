import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.backgroundImage,
    required this.icon,
    required this.title,
    required this.subTitle,
  });
  final String backgroundImage, icon, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
