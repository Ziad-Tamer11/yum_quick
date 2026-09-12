import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_images.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  var isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () => setState(() => isFavorite = !isFavorite),
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
