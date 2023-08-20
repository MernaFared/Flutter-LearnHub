import 'dart:convert';

class RecommendedCourseModel {
  CourseData? courseData;

  RecommendedCourseModel({this.courseData});

  RecommendedCourseModel.fromJson(Map<String, dynamic> json) {
    courseData = json['CourseData'] != null
        ? CourseData.fromJson(jsonDecode(json['CourseData']))
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (courseData != null) {
      data['CourseData'] = courseData!.toJson();
    }
    return data;
  }
}

class CourseData {
  List<String>? courseDescription;
  String? courseName;
  List<String>? courseRating;
  List<String>? courseURL;
  List<String>? difficultyLevel;
  String? university;

  CourseData(
      {this.courseDescription,
        this.courseName,
        this.courseRating,
        this.courseURL,
        this.difficultyLevel,
        this.university});

  CourseData.fromJson(Map<String, dynamic> json) {
    courseDescription = json['Course Description'].cast<String>();
    courseName = json['Course Name'];
    courseRating = json['Course Rating'].cast<String>();
    courseURL = json['Course URL'].cast<String>();
    difficultyLevel = json['Difficulty Level'].cast<String>();
    university = json['University'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Course Description'] = courseDescription;
    data['Course Name'] = courseName;
    data['Course Rating'] = courseRating;
    data['Course URL'] = courseURL;
    data['Difficulty Level'] = difficultyLevel;
    data['University'] = university;
    return data;
  }
}