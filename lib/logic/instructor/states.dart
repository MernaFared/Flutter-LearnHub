
abstract class InstructorStates{}

class InstructorInitialState extends InstructorStates{}

class InstructorChangeBottomNavState extends InstructorStates{}

class UploadCourseImageLoadingState extends InstructorStates{}

class UploadCourseImageSuccessState extends InstructorStates{}

class UploadCourseImageErrorState extends InstructorStates{
  final String error;

  UploadCourseImageErrorState({required this.error});

}

