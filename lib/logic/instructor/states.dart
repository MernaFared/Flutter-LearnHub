
abstract class InstructorStates{}

class InstructorInitialState extends InstructorStates{}

class InstructorChangeBottomNavState extends InstructorStates{}

class UploadCourseImageLoadingState extends InstructorStates{}

class UploadCourseImageSuccessState extends InstructorStates{}

class UploadCourseImageErrorState extends InstructorStates{
  final String error;

  UploadCourseImageErrorState({required this.error});

}
class GetInstructorDataLoadingState extends InstructorStates{}
class GetInstructorDataSuccessState extends InstructorStates{}
class GetInstructorDataErrorState extends InstructorStates{
  final String? error;
  GetInstructorDataErrorState({this.error});
}

class  GetInstructorCoursesLoadingState extends InstructorStates{}
class GetInstructorCoursesSuccessState extends InstructorStates{}
class GetInstructorCoursesErrorState extends InstructorStates{
  final String? error;
  GetInstructorCoursesErrorState({this.error});
}


class  AddCourseLoadingState extends InstructorStates{}
class AddCourseSuccessState extends InstructorStates{}
class AddCourseErrorState extends InstructorStates{
  final String? error;
  AddCourseErrorState({this.error});
}

class  AddSectionLoadingState extends InstructorStates{}
class AddSectionSuccessState extends InstructorStates{}
class AddSectionErrorState extends InstructorStates{
  final String? error;
  AddSectionErrorState({this.error});
}

class  AddSectionContentLoadingState extends InstructorStates{}
class AddSectionContentSuccessState extends InstructorStates{}
class AddSectionContentErrorState extends InstructorStates{
  final String? error;
  AddSectionContentErrorState({this.error});
}

class  GetImageLoadingState extends InstructorStates{}
class GetImageSuccessState extends InstructorStates{}
class GetImageErrorState extends InstructorStates{
  final String? error;
  GetImageErrorState({this.error});
}

class  GetVideoLoadingState extends InstructorStates{}
class GetVideoSuccessState extends InstructorStates{}
class GetVideoErrorState extends InstructorStates{
  final String? error;
  GetVideoErrorState({this.error});
}

class NewState extends InstructorStates{}