import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/utils/app_colors.dart';
import '../../../../../models/custom_expenses_item_model.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.customExpensesItemModel,
    this.shapeColor,
    this.iconColor,
  });

  final CustomExpensesItemModel customExpensesItemModel;
  final Color? shapeColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: shapeColor ?? AppColors.lightGrey,
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(
            customExpensesItemModel.image,
            colorFilter: shapeColor != null ? const ColorFilter.mode(Colors.white, BlendMode.srcIn) : null,
          ),
        ),
        Icon(
          CupertinoIcons.forward,
          color: iconColor ?? AppColors.darkBlue,
        )
      ],
    );
  }
}
