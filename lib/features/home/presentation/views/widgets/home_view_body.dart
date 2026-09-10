import 'package:flutter/material.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/custom_options_button.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/search_field.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
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
        ],
      ),
    );
  }
}
