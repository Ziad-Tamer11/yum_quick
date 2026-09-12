import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/custom_dashed_line.dart';

class AdditionalItem extends StatefulWidget {
  const AdditionalItem({super.key, required this.title, required this.value});
  final String title, value;

  @override
  State<AdditionalItem> createState() => _AdditionalItemState();
}

class _AdditionalItemState extends State<AdditionalItem> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.title,
          style: TextStyles.light14.copyWith(color: AppColors.primaryFont),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: CustomDashedLine(),
          ),
        ),
        Text(
          '\$${widget.value}',
          style: TextStyles.light12.copyWith(color: AppColors.primaryFont),
        ),
        const SizedBox(width: 8),
        Material(
          shape: CircleBorder(),
          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () => setState(() => isSelected = !isSelected),
            child: SvgPicture.asset(
              isSelected
                  ? Assets.imagesSelectedCheckPoint
                  : Assets.imagesCheckPoint,
            ),
          ),
        ),
      ],
    );
  }
}
