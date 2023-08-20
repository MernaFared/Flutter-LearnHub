import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:graduation_project/logic/instructor/states.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/constants.dart';
import '../../models/instructor/instructorCoursesModel.dart';
import '../../models/instructor/instructorDataModel.dart';
import '../../presentation/screens/home_screens/my_account_instructor_screen.dart';
import '../../presentation/screens/instructor_screens/add_course/add_course_screen.dart';
import '../../presentation/screens/instructor_screens/home/instructor_home_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


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
  InstructorDataModel? instructorDataModel;

void GetInstructorData  ( int instructor_id) async{
  emit(GetInstructorDataLoadingState());
  //var headers = {
    //'Content-Type': 'application/json',
  //};
  var request = http.Request(
      'GET', Uri.parse('${baseUrl}instructorProfile/$instructor_id'));


   http.Response response = await http.Response.fromStream(
      await request.send());
  final result = convert.jsonDecode(response.body) as Map<String, dynamic>;

  if (response.statusCode == 200) {
    instructorDataModel = InstructorDataModel.fromJson(result);
    emit(GetInstructorDataSuccessState());

   }
  else {
    emit(GetInstructorDataErrorState());
  print(response.reasonPhrase);
  }

}
List<InstructorCourseModel> inctructorcourses=[];

  void GetInstructorCourses  ( int instructor_id) async{
    emit(GetInstructorCoursesLoadingState());
    //var headers = {
    //'Content-Type': 'application/json',
    //};
    var request = http.Request(
        'GET', Uri.parse('${baseUrl}instructors/$instructor_id/getCourses'));


    http.Response response = await http.Response.fromStream(
        await request.send());
    final result = convert.jsonDecode(response.body) ;

    if (response.statusCode == 200) {
      for (var i in result){
        inctructorcourses.add(InstructorCourseModel.fromJson(i));

      }
       debugPrint("${inctructorcourses.length}");
      emit(GetInstructorCoursesSuccessState());

    }
    else {
      emit(GetInstructorCoursesErrorState());
      print(response.reasonPhrase);
    }

  }


  /// Add course
  int? courseID;
  String? courseName;
  void addCourse({
    required String courseName,
    required String description,
    required int noOfSections,
    required var cost,
    
    required int instructorID
  }) async {
    emit(AddCourseLoadingState());

    var headers = {
      'Content-Type': 'application/json',
    };

    /// post api
    try {
      var request = http.Request(
          'POST', Uri.parse('${baseUrl}instructors/$instructorID/addCourses'));

      request.body = convert.jsonEncode(
          {
            "course_title": courseName,
            "course_brief": description,
            "num_of_chapters": noOfSections,
            "course_fee": cost,
            "instructor_id": instructorID

          }
      );
      request.headers.addAll(headers);


      http.Response response = await http.Response.fromStream(
          await request.send());

      debugPrint("Status Code :: ${response.statusCode}");
      final result = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint("Response :: $result");

        courseID = result['courseId'];
        debugPrint("course Id :: $courseID");

        emit(AddCourseSuccessState());
      } else if (response.statusCode == 500) {
        debugPrint("Error1 :: ${response.reasonPhrase}");
        emit(AddCourseErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      } else {
        debugPrint("Error2 :: ${response.reasonPhrase}");
        emit(AddCourseErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      }
    } catch (e) {
      debugPrint("Error :: ${e.toString()}");
      emit(AddCourseErrorState(
          error: e.toString()
      ));
    }
  }


  /// Add section
  int? sectionID;
  List<Map<String,dynamic>> mySectionList = [];
  void addSection({
    required String sectionName,
    required int noOfReading,
    required int noOfAssignment,
    required int noOfARContent,
    required int noOfVideo
  }) async {
    emit(AddSectionLoadingState());

    var headers = {
      'Content-Type': 'application/json',
    };

    /// post api
    try {
      var request = http.Request(
          'POST', Uri.parse('${baseUrl}courses/$courseID/sections'));

      request.body = convert.jsonEncode(
          {
            "chapter_title": sectionName,
            "num_of_reading": noOfReading,
            "num_of_assignment": noOfAssignment,
            "num_of_video": noOfVideo,
            "num_of_ar_content": noOfARContent

          }
      );
      request.headers.addAll(headers);


      http.Response response = await http.Response.fromStream(
          await request.send());

      debugPrint("Status Code :: ${response.statusCode}");
      final result = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint("Response :: $result");

        sectionID = result['sectionId'];
        debugPrint("section Id :: $sectionID");

        emit(AddSectionSuccessState());
      } else if (response.statusCode == 500) {
        debugPrint("Error1 :: ${response.reasonPhrase}");
        emit(AddSectionErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      } else {
        debugPrint("Error2 :: ${response.reasonPhrase}");
        emit(AddSectionErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      }
    } catch (e) {
      debugPrint("Error :: ${e.toString()}");
      emit(AddSectionErrorState(
          error: e.toString()
      ));
    }
  }


  var pick = ImagePicker();
  File? video;
  Future<void> pickVideo() async {
    final pickedFile = await pick.pickVideo(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      video = File(pickedFile.path);

    emit(GetVideoSuccessState());
    } else {
      debugPrint('No video selected.');
      emit(GetVideoErrorState());
    }
  }

  /// pick image
  File? image;
  String? imageName;
  List<File> images = [];
  Future<void> pickImage() async {
    final pickedFile = await pick.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      image = File(pickedFile.path);
      imageName = pickedFile.name;
      images.add(image!);
      emit(GetImageSuccessState());
    } else {
      debugPrint('No image selected.');
      emit(GetImageErrorState());
    }
  }

  void changeState(){
    emit(NewState());
  }

  int selectedIndex = 0;


}