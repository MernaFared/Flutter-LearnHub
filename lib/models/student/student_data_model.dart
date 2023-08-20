class StudentDataModel {
  int? studentID;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  var registrationDate;
  var numOfCoursesEnrolled;
  var numOfCoursesCompleted;
  var image;

  StudentDataModel(
      {this.studentID,
        this.firstName,
        this.lastName,
        this.email,
        this.password,
        this.registrationDate,
        this.numOfCoursesEnrolled,
        this.numOfCoursesCompleted,
        this.image});

  StudentDataModel.fromJson(Map<String, dynamic> json) {
    studentID = json['idstudent'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    password = json['password'];
    registrationDate = json['registration_date'];
    numOfCoursesEnrolled = json['num_of_courses_enrolled'];
    numOfCoursesCompleted = json['num_of_courses_completed'];
    image = json['image'];
  }

}