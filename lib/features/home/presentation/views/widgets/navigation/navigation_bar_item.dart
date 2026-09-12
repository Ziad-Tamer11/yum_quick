import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/domain/entities/buttom_navigation_bar_entity.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/navigation/active_item.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/navigation/in_active_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarEntity,
  });
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(image: bottomNavigationBarEntity.activeImage)
        : InActiveItem(image: bottomNavigationBarEntity.inActiveImage);
  }
}
