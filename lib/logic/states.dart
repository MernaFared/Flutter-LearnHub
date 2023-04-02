
abstract class SocialStates{}
class SocialInitialState extends SocialStates{}
class SocialGetUserLoadingState extends SocialStates{}
class SocialGetUserSuccessState extends SocialStates{}
class SocialGetUserErrorState extends SocialStates{
  final String error;
  SocialGetUserErrorState(this.error);
}
class InitializeAppState extends SocialStates {}
class InitializeAppStateee extends SocialStates {}
class AppChangeBottomState extends SocialStates
{}
class SocialNewPostState extends SocialStates
{}
class ShopChangeBottomNavState extends SocialStates{}
class SocialGetAllUsersLoadingState extends SocialStates{}
class SocialGetAllUsersSuccessState extends SocialStates{}
class SocialGetAllUsersErrorState extends SocialStates{
  final String error;
  SocialGetAllUsersErrorState(this.error);
}
class SocialGetPostsLoadingState extends SocialStates{}
class SocialGetPostsSuccessState extends SocialStates{}
class SocialGetPostsErrorState extends SocialStates{
  final String error;
  SocialGetPostsErrorState(this.error);
}
class SocialGetCommentPostsLoadingState extends SocialStates{}
class SocialGetCommentPostsSuccessState extends SocialStates{
  late String insidePostId;
  SocialGetCommentPostsSuccessState(this.insidePostId);
}
class SocialGetCommentPostsErrorState extends SocialStates{
  final String error;
  SocialGetCommentPostsErrorState(this.error);
}
class SocialLikePostsSuccessState extends SocialStates{}
class SocialLikePostsErrorState extends SocialStates{
  final String error;
  SocialLikePostsErrorState(this.error);
}
class SocialCommentsPostsSuccessState extends SocialStates{}
class SocialCommentsPostsErrorState extends SocialStates{
  final String error;
  SocialCommentsPostsErrorState(this.error);
}

class SocialChangeBottomState extends SocialStates
{}
class SocialNewChatState extends SocialStates
{}
class AppChangeDarkState extends SocialStates
{}
class SocialProfileImagePickedSuccessState extends SocialStates
{}
class SocialProfileImagePickedErrorState extends SocialStates
{}
class SocialcoverimagePickedSuccessState extends SocialStates
{}
class SocialcoverimagePickedErrorState extends SocialStates
{}
class SocialuploadimageSuccessState extends SocialStates
{}
class SocialuploadimageErrorState extends SocialStates
{}
class SocialuploadcoverimageSuccessState extends SocialStates
{}
class SocialuploadcoverimageErrorState extends SocialStates
{}
class SocialUserUpdateErrorState extends SocialStates
{}
class SocialUserUpdateLoadingState extends SocialStates
{}
//create post
class SocialCreatePostErrorState extends SocialStates
{}
class SocialCreatePostLoadingState extends SocialStates
{}
class SocialCreatePostSuccessState extends SocialStates
{}
class SocialPostimagePickedSuccessState extends SocialStates
{}
class SocialPostimagePickedErrorState extends SocialStates
{}
class SocialRemoveimageState extends SocialStates
{}
class SocialCreateCommentPostsLoadingState extends SocialStates
{}
class SocialCreateCommentPostsSuccessState extends SocialStates
{}
class SocialCreateCommentPostsErrorState extends SocialStates
{
  final String error;
  SocialCreateCommentPostsErrorState(this.error);
}

class AppCreateDataBase extends SocialStates
{}
class AppInsertDataBase extends SocialStates
{}
class AppGetDataBase extends SocialStates
{}
class Isclosedstate extends SocialStates
{}
class AppGetDataBaseLoading extends SocialStates
{}
class AppUpdateDataBase extends SocialStates
{}
class AppDeleteDataBase extends SocialStates
{}