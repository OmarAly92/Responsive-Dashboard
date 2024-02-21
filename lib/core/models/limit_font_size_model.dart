import 'package:equatable/equatable.dart';

class LimitFontSizeModel extends Equatable {
  final double upperLimit;
  final double lowerLimit;

  const LimitFontSizeModel({
    required this.lowerLimit,
    required this.upperLimit,
  });

  @override
  List<Object> get props => [lowerLimit, upperLimit];
}
