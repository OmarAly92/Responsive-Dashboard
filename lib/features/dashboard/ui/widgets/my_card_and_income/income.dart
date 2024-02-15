import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_background_container.dart';
import 'income_section_body.dart';
import 'income_section_header.dart';

class Income extends StatelessWidget {
  const Income({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          IncomeSectionHeader(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: IncomeSectionBody(),
          ),
        ],
      ),
    );
  }
}
