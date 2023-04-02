import 'package:flutter/services.dart';

class CourseItemModel {
  final String image;
  final String title;
  final String lessonNumber;
  final String btnText;

  CourseItemModel({
    required this.image,
    required this.title,
    required this.lessonNumber,
    required this.btnText,
  });
}
