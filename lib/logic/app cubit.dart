import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/logic/states.dart';
import 'package:graduation_project/models/Social%20user%20model.dart';
import 'package:graduation_project/models/comment%20model.dart';
import 'package:graduation_project/presentation/screens/home_screens/home_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/my_account_user_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/my_courses.dart';
import 'package:graduation_project/presentation/screens/home_screens/search_screen.dart';
class AppCubit extends Cubit <SocialStates>
{
  AppCubit():super(InitializeAppStateee());
  static AppCubit get (context)=>BlocProvider.of(context);
  int currentindex=0;
  List<Widget>BottomScreens = [
    HomeScreen(),
    MyCoursesScreen(),
    SearchScreen(),
    MyAccountScreenUser(),
  ];
  void changebottom(int index) {
    currentindex = index;
    emit(ShopChangeBottomNavState());
  }

  // SocialUserModel? usermodel;
  // void likePost(String postId)
  // {
  //   FirebaseFirestore.instance.
  //   collection('posts').
  //   doc(postId).collection('likes').
  //   doc(usermodel!.uid).set({
  //     'like':true,
  //   })
  //       .then((value) {
  //     emit(SocialLikePostsSuccessState());
  //   })
  //       .catchError((error){
  //     emit(SocialLikePostsErrorState(error.toString()));
  //   });
  // }
  // void createComment({required String postId,required String comment,required String dataTime}){
  //   emit(SocialCreateCommentPostsLoadingState());
  //   // commentList.add(comment);
  //   // print(_commentModel!.text??'null');
  //   CommentModel commentModel=CommentModel(
  //     name: usermodel!.name,
  //     image:usermodel!.image,
  //     uid: usermodel!.uid,
  //     text:comment,
  //     dateTime:dataTime ,
  //   );
  //   FirebaseFirestore.instance
  //       .collection('posts')
  //       .doc(postId)
  //       .collection('Comments')
  //       .doc(usermodel!.uid)
  //       .collection('user Comment')
  //       .add(commentModel.toMap()
  //   ).then((value) {
  //     emit(SocialCreateCommentPostsSuccessState());
  //     getComments(postId);
  //   })
  //       .catchError((error){
  //     emit(SocialCreateCommentPostsErrorState(error.toString()));
  //
  //   });
  //
  // }
  // List<String> commentList=[];
  // List<CommentModel> commentModelList=[];
  // String? newPostId;
  //
  // void getComments(String postId){
  //   emit(SocialGetCommentPostsLoadingState());
  //   FirebaseFirestore.instance
  //       .collection('posts')
  //       .doc(postId)
  //       .collection('Comments')
  //       .doc(usermodel!.uid)
  //       .collection('user Comment')
  //       .orderBy('dateTime')
  //       .get()
  //       .then((value) {
  //     commentModelList.clear();
  //     commentList.clear();
  //     value.docs.forEach((element) {
  //       // commentModel=   CommentModel.fromJson(element.data());
  //       commentModelList.add(CommentModel.fromJson(element.data()));
  //       commentList.add(element.id);
  //       emit(SocialGetCommentPostsSuccessState(postId));
  //     });
  //     print(postId+' 3');
  //     newPostId=postId ;
  //     print(newPostId);
  //     emit(SocialGetCommentPostsSuccessState(postId));
  //   }).catchError((error){
  //     emit(SocialGetCommentPostsErrorState(error.toString()));
  //     print(error);
  //   });
  // }
  // List<SocialUserModel>socialUserModel=[];
  // void getAllUsers(){
  //   print('5');
  //   socialUserModel.clear();
  //   emit(SocialGetAllUsersLoadingState());
  //   FirebaseFirestore.instance
  //       .collection('users')
  //       .get()
  //       .then((value) {
  //     value.docs.forEach((element) {
  //       if(element.data()['uid']!=usermodel!.uid)
  //         socialUserModel.add(SocialUserModel.fromJson(element.data()));
  //       emit(SocialGetAllUsersSuccessState());
  //       print('6');
  //     });
  //     emit(SocialGetAllUsersSuccessState());
  //   }).catchError((error){
  //     emit(SocialGetAllUsersErrorState(error.toString()));
  //     print(error);
  //   });
  // }


}