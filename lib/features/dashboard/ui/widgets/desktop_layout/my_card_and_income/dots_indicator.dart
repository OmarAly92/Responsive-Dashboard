import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.currentPageIndex,
  });

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => CustomDotIndicator(isActive: index == currentPageIndex),
      ),
    );
  }
}
