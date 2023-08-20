
abstract class StudentStates{}

class StudentInitialState extends StudentStates{}



class GetStudentDataLoadingState extends StudentStates{}
class GetStudentDataSuccessState extends StudentStates{}
class GetStudentDataErrorState extends StudentStates{
  final String? error;
  GetStudentDataErrorState({this.error});
}

class GetAllCoursesLoadingState extends StudentStates{}
class GetAllCoursesSuccessState extends StudentStates{}
class GetAllCoursesErrorState extends StudentStates{
  final String? error;
  GetAllCoursesErrorState({this.error});
}

class GetRecommendedCoursesLoadingState extends StudentStates{}
class GetRecommendedCoursesSuccessState extends StudentStates{}
class GetRecommendedCoursesErrorState extends StudentStates{
  final String? error;
  GetRecommendedCoursesErrorState({this.error});
}





class NewState extends StudentStates{}