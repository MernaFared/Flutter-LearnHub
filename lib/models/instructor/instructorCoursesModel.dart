class InstructorCourseModel {
  int? idcourse;
  String? courseTitle;
  String? courseBrief;
  int? numOfChapters;
  var courseFee;
  int? instructorId;

  InstructorCourseModel(
      {this.idcourse,
        this.courseTitle,
        this.courseBrief,
        this.numOfChapters,
        this.courseFee,
        this.instructorId});

  InstructorCourseModel.fromJson(Map<String, dynamic> json) {
    idcourse = json['idcourse'];
    courseTitle = json['course_title'];
    courseBrief = json['course_brief'];
    numOfChapters = json['num_of_chapters'];
    courseFee = json['course_fee'];
    instructorId = json['instructor_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idcourse'] = this.idcourse;
    data['course_title'] = this.courseTitle;
    data['course_brief'] = this.courseBrief;
    data['num_of_chapters'] = this.numOfChapters;
    data['course_fee'] = this.courseFee;
    data['instructor_id'] = this.instructorId;
    return data;
  }
}