import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class IncomeItemModel extends Equatable {
  final Color color;
  final String title, value;

  const IncomeItemModel({
    required this.value,
    required this.title,
    required this.color,
  });

  @override
  List<Object> get props => [value, title, color];
}
