import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CourseModel {
  final String title;
  final String description;
  final int maxVal;
  final int minVal;
  final Color progressColor;
  final Color backColor;
  final Color videoColor;

  CourseModel({
    required this.title,
    required this.description,
    required this.backColor,
    required this.videoColor,
    required this.maxVal,
    required this.minVal,
    required this.progressColor,
  });
}
