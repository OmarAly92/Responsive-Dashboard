import 'package:equatable/equatable.dart';

class CustomProfileModel extends Equatable {
  final String title;
  final String subtitle;

  const CustomProfileModel({
    required this.title,
    required this.subtitle,
  });

  @override
  List<Object> get props => [title, subtitle];
}
