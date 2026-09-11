import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_images.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({
    super.key,
    required this.isFavorite,
    required this.onTap,
  });

  final bool isFavorite;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 22,
          height: 22,
          child: Center(
            child: SvgPicture.asset(
              isFavorite ? Assets.imagesFavorite : Assets.imagesNotFavorite,
              width: 10,
              height: 10,
            ),
          ),
        ),
      ),
    );
  }
}
