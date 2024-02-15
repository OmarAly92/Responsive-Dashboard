import 'package:flutter/material.dart';

import '../../../models/income_item_model.dart';
import 'income_detail_item.dart';

class IncomeDetail extends StatelessWidget {
  const IncomeDetail({
    super.key,
  });

  static const items = [
    IncomeItemModel(color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    IncomeItemModel(color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    IncomeItemModel(color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    IncomeItemModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => IncomeDetailItem(itemDetailsModel: e)).toList(),
    );
  }
}
