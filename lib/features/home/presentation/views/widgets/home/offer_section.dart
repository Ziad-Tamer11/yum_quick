import 'package:flutter/material.dart';
import 'package:yum_quick/core/widgets/custom_dots_indicator.dart';
import 'package:yum_quick/features/home/presentation/views/widgets/home/offer_card.dart';

class OfferSection extends StatefulWidget {
  const OfferSection({super.key});

  @override
  State<OfferSection> createState() => _OfferSectionState();
}

class _OfferSectionState extends State<OfferSection> {
  final _pageController = PageController();
  static const _offersCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 323 / 128,
          child: PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: _pageController,
            itemCount: _offersCount,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: OfferCard(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        CustomDotsIndicator(
          pageController: _pageController,
          dotsCount: _offersCount,
        ),
      ],
    );
  }
}
