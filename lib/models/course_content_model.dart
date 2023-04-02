import 'package:flutter/cupertino.dart';

class CourseContentModel {
  final String courseNumber;
  final String title;
  final String mins;
  final IconData iconData;
  final Color color;

  CourseContentModel({
    required this.courseNumber,
    required this.title,
    required this.mins,
    required this.iconData,
    required this.color,
  });
}

class LectureCourseModel {
  final String title;

  LectureCourseModel({
    required this.title,
  });
}
