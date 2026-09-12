import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/home/rating_widget.dart';

class CustomItemDetailsAppBar extends StatefulWidget {
  const CustomItemDetailsAppBar({super.key});

  @override
  State<CustomItemDetailsAppBar> createState() =>
      _CustomItemDetailsAppBarState();
}

class _CustomItemDetailsAppBarState extends State<CustomItemDetailsAppBar> {
  var isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kHorizontalPadding,
        right: kHorizontalPadding,
        top: 41,
        bottom: 13,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: SvgPicture.asset(Assets.imagesBackIconArrow, height: 15),
          ),
          const SizedBox(width: 7),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mexican Appetizer',
                textAlign: TextAlign.center,
                style: TextStyles.medium20,
              ),
              RatingWidget(),
            ],
          ),
          Spacer(),
          Material(
            color: Colors.white,
            shape: const CircleBorder(),
            child: InkWell(
              customBorder: CircleBorder(),
              onTap: () => setState(() => isFavorite = !isFavorite),
              child: Container(
                width: 21,
                height: 21,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.orangeBase,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    isFavorite
                        ? Assets.imagesFavDetails
                        : Assets.imagesNotFavDetails,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
