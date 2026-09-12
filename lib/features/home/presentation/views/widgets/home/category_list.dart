import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/home/category_itemd.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 18);
        },
        itemBuilder: (context, index) {
          return CategoryItem();
        },
      ),
    );
  }
}
