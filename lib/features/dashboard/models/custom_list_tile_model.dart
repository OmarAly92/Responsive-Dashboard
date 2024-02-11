import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CustomListTileModel extends Equatable {
  final String title;
  final String imageAssets;
  final TextStyle textStyle;
  final bool active;

  const CustomListTileModel({
    required this.title,
    required this.imageAssets,
    required this.textStyle,
    this.active = false,
  });

  @override
  List<Object> get props => [title, imageAssets, textStyle, active];
}
