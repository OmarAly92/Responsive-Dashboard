import 'package:flutter/material.dart';

import '../../../../../../core/utils/size_config.dart';
import 'detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_item.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetail()),
            ],
          );
  }
}