import 'package:flutter/material.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/home/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(bottom: false, child: HomeViewBody()));
  }
}
