import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:graduation_project/logic/instructor/states.dart';
import 'package:image_picker/image_picker.dart';

import '../../presentation/screens/home_screens/my_account_instructor_screen.dart';
import '../../presentation/screens/instructor_screens/add_course/add_course_screen.dart';
import '../../presentation/screens/instructor_screens/home/instructor_home_screen.dart';

class InstructorCubit extends Cubit<InstructorStates>
{
  InstructorCubit():super(InstructorInitialState());
  static InstructorCubit get (context)=> BlocProvider.of(context);


  int currentindex = 0;
  List<Widget> BottomScreens = [
    const InstructorHomeScreen(),
    const AddCourseScreen(),
    MyAccountScreenInstructor(),
  ];

  void changebottom(int index) {
    currentindex = index;
    emit(InstructorChangeBottomNavState());
  }

  /// course image
  File? courseImage;
  var picker = ImagePicker();

  Future<void> pickCourseImage() async {
    final XFile? mainImage;

      mainImage = await picker.pickImage(
        source: ImageSource.gallery,
      );

    if (mainImage != null) {
      courseImage = File(mainImage.path);
      emit(UploadCourseImageSuccessState());
    } else {
      emit(
        UploadCourseImageErrorState(
          error: 'No image selected',
        ),
      );
    }
  }



}