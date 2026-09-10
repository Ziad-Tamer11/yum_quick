import 'package:flutter/material.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/custom_options_button.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/search_field.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/welcome_text.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key, required this._searchController});

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            Expanded(child: SearchFiled(searchController: _searchController)),
            const SizedBox(width: 10),
            CustomOptionsButton(image: Assets.imagesCart),
            const SizedBox(width: 7),
            CustomOptionsButton(image: Assets.imagesNotification),
            const SizedBox(width: 7),
            CustomOptionsButton(image: Assets.imagesProfile),
          ],
        ),
        SizedBox(height: 16),
        WelcomeText(),
      ],
    );
  }
}
