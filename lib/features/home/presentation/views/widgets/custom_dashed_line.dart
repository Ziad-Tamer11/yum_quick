import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(30, (index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 3),
            child: Container(
              height: 2,
              decoration: BoxDecoration(color: Color(0xffFFD8C7)),
            ),
          ),
        );
      }),
    );
  }
}
