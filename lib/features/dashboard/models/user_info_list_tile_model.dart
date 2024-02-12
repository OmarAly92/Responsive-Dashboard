import 'package:equatable/equatable.dart';

class UserInfoListTileModel extends Equatable {
  final String title;
  final String subtitle;
  final String image;

  const UserInfoListTileModel({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  List<Object> get props => [title, subtitle, image];
}
