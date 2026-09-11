import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/presentation/views/home_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentViewIndex});

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [
        HomeView(),
        Placeholder(),
        Placeholder(),
        Placeholder(),
        Placeholder(),
      ],
    );
  }
}
