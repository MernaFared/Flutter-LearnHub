abstract class AuthStates{}

class AuthInitialState extends AuthStates{}

class StudentRegisterLoadingState extends AuthStates{}
class StudentRegisterSuccessState extends AuthStates{}
class StudentRegisterErrorState extends AuthStates{
  final String? error;
  StudentRegisterErrorState({this.error});
}


class StudentLoginLoadingState extends AuthStates{}
class StudentLoginSuccessState extends AuthStates{}
class StudentLoginErrorState extends AuthStates{
  final String? error;
  StudentLoginErrorState({this.error});
}


class InstructorRegisterLoadingState extends AuthStates{}
class InstructorRegisterSuccessState extends AuthStates{}
class InstructorRegisterErrorState extends AuthStates{
  final String? error;
  InstructorRegisterErrorState({this.error});
}

class InstructorLoginLoadingState extends AuthStates{}
class InstructorLoginSuccessState extends AuthStates{}
class InstructorLoginErrorState extends AuthStates{
  final String? error;
  InstructorLoginErrorState({this.error});
}