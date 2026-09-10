import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/utils/app_colors.dart';
import 'package:yum_quick/core/utils/app_images.dart';
import 'package:yum_quick/core/utils/app_text_styles.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({
    super.key,
    required this.searchController,
    this.onChanged,
  });

  final TextEditingController searchController;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        hintText: 'Search',
        hintStyle: TextStyles.light12.copyWith(
          color: const Color(0xFF676767),
          fontSize: 16,
        ),
        suffixIconConstraints: const BoxConstraints(
          minWidth: 40,
          minHeight: 40,
        ),
        suffixIcon: ValueListenableBuilder<TextEditingValue>(
          valueListenable: searchController,
          builder: (context, value, _) {
            if (value.text.isEmpty) {
              return Container(
                margin: const EdgeInsets.only(right: 4),
                width: 32,
                height: 32,
                decoration: const ShapeDecoration(
                  color: AppColors.orangeBase,
                  shape: CircleBorder(),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      // TODO: Navigate to Filter View
                    },
                    icon: SvgPicture.asset(
                      Assets.imagesFilter,
                      width: 13,
                      height: 13,
                    ),
                  ),
                ),
              );
            }
            return IconButton(
              onPressed: () {
                searchController.clear();
                onChanged?.call('');
              },
              icon: const Icon(Icons.close, color: AppColors.orangeBase),
            );
          },
        ),
        fillColor: Colors.white,
        filled: true,
        border: _buildOutlineInputBorder(),
        enabledBorder: _buildOutlineInputBorder(),
        focusedBorder: _buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(30),
    );
  }
}
