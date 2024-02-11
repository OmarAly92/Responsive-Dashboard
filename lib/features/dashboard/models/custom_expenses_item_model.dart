import 'package:equatable/equatable.dart';

class CustomExpensesItemModel extends Equatable {
  final String image;
  final String title;
  final String date;
  final String price;

  const CustomExpensesItemModel({
    required this.image,
    required this.title,
    required this.date,
    required this.price,
  });

  @override
  List<Object> get props => [image, title, date, price];
}
