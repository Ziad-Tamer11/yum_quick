import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(children: [SvgPicture.asset(image, height: 24)]);
  }
}
