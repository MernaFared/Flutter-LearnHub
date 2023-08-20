abstract class InterestsStates{}

class InterestsInitialState extends InterestsStates{}

class ChoosinginterestsLoadingState extends InterestsStates{}
class ChoosinginterestsSuccessState extends InterestsStates{}
class ChoosinginterestsErrorState extends InterestsStates{
  final String? error;
  ChoosinginterestsErrorState({this.error});
}