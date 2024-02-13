import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/app_styles.dart';
import 'dots_indicator.dart';
import 'my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late final PageController pageController;
  late int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My card',
          style: AppStyles.styleSemiBold20,
        ),
        const Gap(20),
        MyCardsPageView(
          pageController: pageController,
        ),
        const Gap(20),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
