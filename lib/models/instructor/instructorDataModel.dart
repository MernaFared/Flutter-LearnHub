class InstructorDataModel {
  int? idinstructor;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  var registrationDate;
  var qualification;
  var introductionBrief;
  var image;
  var numOfPublishedCourses;
  var numOfEnrolledStudents;
  var averageReviewRating;
  var numOfReviews;

  InstructorDataModel(
      {this.idinstructor,
        this.firstName,
        this.lastName,
        this.email,
        this.password,
        this.registrationDate,
        this.qualification,
        this.introductionBrief,
        this.image,
        this.numOfPublishedCourses,
        this.numOfEnrolledStudents,
        this.averageReviewRating,
        this.numOfReviews});

  InstructorDataModel.fromJson(Map<String, dynamic> json) {
    idinstructor = json['idinstructor'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    password = json['password'];
    registrationDate = json['registration_date'];
    qualification = json['qualification'];
    introductionBrief = json['introduction_brief'];
    image = json['image'];
    numOfPublishedCourses = json['num_of_published_courses'];
    numOfEnrolledStudents = json['num_of_enrolled_students'];
    averageReviewRating = json['average_review_rating'];
    numOfReviews = json['num_of_reviews'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idinstructor'] = this.idinstructor;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['registration_date'] = this.registrationDate;
    data['qualification'] = this.qualification;
    data['introduction_brief'] = this.introductionBrief;
    data['image'] = this.image;
    data['num_of_published_courses'] = this.numOfPublishedCourses;
    data['num_of_enrolled_students'] = this.numOfEnrolledStudents;
    data['average_review_rating'] = this.averageReviewRating;
    data['num_of_reviews'] = this.numOfReviews;
    return data;
  }
}