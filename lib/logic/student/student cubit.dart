
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:graduation_project/logic/student/student_states.dart';
import 'package:graduation_project/models/course/recommended_course_model.dart';
import 'package:graduation_project/models/student/student_data_model.dart';
import '../../core/constants.dart';
import '../../models/course/course_data_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class StudentCubit extends Cubit<StudentStates>
{
  StudentCubit():super(StudentInitialState());
  static StudentCubit get (context)=> BlocProvider.of(context);



  StudentDataModel? studentDataModel;
  void getStudentData(int studentID) async {
    emit(GetStudentDataLoadingState());
    //var headers = {
    //'Content-Type': 'application/json',
    //};
    var request = http.Request(
        'GET', Uri.parse('${baseUrl}studentProfile/$studentID'));


    http.Response response = await http.Response.fromStream(
        await request.send());
    final result = convert.jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode == 200 || response.statusCode == 201) {
      studentDataModel = StudentDataModel.fromJson(result);
      emit(GetStudentDataSuccessState());

    }
    else {
      emit(GetStudentDataErrorState());
      debugPrint(response.reasonPhrase.toString());
    }

  }


  /// get all courses (explore your courses)
  List<CourseDataModel> allCourses = [];
  void getAllCourses() async{
    emit(GetAllCoursesLoadingState());
    //var headers = {
    //'Content-Type': 'application/json',
    //};
    var request = http.Request(
        'GET', Uri.parse('${baseUrl}showCourses'));


    http.Response response = await http.Response.fromStream(
        await request.send());
    final result = convert.jsonDecode(response.body) ;

    if (response.statusCode == 200) {
      for (var i in result){
        allCourses.add(CourseDataModel.fromJson(i));

      }
      debugPrint("${allCourses.length}");
      emit(GetAllCoursesSuccessState());

    }
    else {
      emit(GetAllCoursesErrorState());
      debugPrint(response.reasonPhrase.toString());
    }

  }

  /// Search
  bool showSearchView = false;
  List<CourseDataModel> searchCourses = [];
  void searchForCourses(String txt){
    for(var i in allCourses){
      if(i.courseTitle!.toLowerCase().contains(txt.toLowerCase()) || i.courseBrief!.toLowerCase().contains(txt.toLowerCase())){
        searchCourses.add(i);
      }
    }
    debugPrint("Search Courses Length :: ${searchCourses.length}");
  }

  void changeState(){
    emit(NewState());
  }


  List<RecommendedCourseModel> recommendedCourses =[];
  void getRecommendedCourses(int studentID) async{
    emit(GetRecommendedCoursesLoadingState());
    //var headers = {
    //'Content-Type': 'application/json',
    //};
    var request = http.Request(
        'GET', Uri.parse('${baseUrl}recommendedCourses/$studentID'));


    http.Response response = await http.Response.fromStream(
        await request.send());
    final result = convert.jsonDecode(response.body);
    debugPrint("Type::${result[0].runtimeType}");

    if (response.statusCode == 200) {
      for (var i in result){
        //debugPrint("Type::${i.runtimeType}");
        recommendedCourses.add(RecommendedCourseModel.fromJson(i));
      }
      //printLongString("Result :: $result");

      emit(GetRecommendedCoursesSuccessState());
      debugPrint("recommendedCourses:: ${recommendedCourses[0].courseData!.courseName}");
    }
    else {
      emit(GetRecommendedCoursesErrorState());
      debugPrint(response.reasonPhrase.toString());
    }

  }






}