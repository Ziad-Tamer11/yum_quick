import 'package:flutter/material.dart';
import 'package:yum_quick/constants.dart';
import 'package:yum_quick/core/widgets/custom_body_container.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/category_itemd.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/custom_home_app_bar.dart';

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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomHomeAppBar(searchController: _searchController),
        ),
        const SizedBox(height: 17),
        const Expanded(
          child: CustomBodyContainer(
            child: Padding(
              padding: EdgeInsets.only(
                left: kHorizontalPadding,
                right: kHorizontalPadding,
                top: 31,
              ),
              child: Column(children: [CategoryItem()]),
            ),
          ),
        ),
      ],
    );
  }
}
