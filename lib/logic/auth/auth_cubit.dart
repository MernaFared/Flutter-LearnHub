import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../core/cash_helper.dart';
import '../../core/constants.dart';
import 'auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() :super(AuthInitialState());

  static AuthCubit get(context) => BlocProvider.of(context);

  /// student register
  void studentRegister({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    emit(StudentRegisterLoadingState());

    var headers = {
      'Content-Type': 'application/json',
    };

    /// post api
    try {
      var request = http.Request(
          'POST', Uri.parse('${baseUrl}students/register'));

      request.body = convert.jsonEncode(
        {
          "email": email,
          "password": password,
          "first_name": firstName,
          "last_name": lastName
        },
      );
      request.headers.addAll(headers);


      http.Response response = await http.Response.fromStream(
          await request.send());

      debugPrint("Status Code :: ${response.statusCode}");
      final result = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint("Response :: $result");

        token = result['token'];
        CacheHelper.saveData(
            key: 'token', value: token);

        Student_id = result['student_id'];
        CacheHelper.saveData(
            key: 'student_id', value: Student_id);


        emit(StudentRegisterSuccessState());
      } else if (response.statusCode == 500) {
        debugPrint("Error1 :: ${response.reasonPhrase}");
        emit(StudentRegisterErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      } else {
        debugPrint("Error2 :: ${response.reasonPhrase}");
        emit(StudentRegisterErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      }
    } catch (e) {
      debugPrint("Error :: ${e.toString()}");
      emit(StudentRegisterErrorState(
          error: e.toString()
      ));
    }
  }

  /// student login
  void studentLogin({
    required String email,
    required String password,
  }) async {
    emit(StudentLoginLoadingState());

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': "$token"
    };

    /// post api
    try {
      var request = http.Request(
          'POST', Uri.parse('${baseUrl}students/login'));

      request.body = convert.jsonEncode(
        {
          "email": email,
          "password": password,
        },
      );
      request.headers.addAll(headers);


      http.Response response = await http.Response.fromStream(
          await request.send());

      debugPrint("Status Code :: ${response.statusCode}");
      final result = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint("Response :: $result");

        token = result['token'];
        CacheHelper.saveData(
            key: 'token', value: token);

        Student_id = result['student_id'];
        CacheHelper.saveData(
            key: 'student_id', value: Student_id);

        emit(StudentLoginSuccessState());
      } else if (response.statusCode == 500) {
        debugPrint("Error1 :: ${response.reasonPhrase}");
        emit(StudentLoginErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      } else {
        debugPrint("Error2 :: ${response.body}");
        emit(StudentLoginErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      }
    } catch (e) {
      debugPrint("Error :: ${e.toString()}");
      emit(StudentLoginErrorState(
          error: e.toString()
      ));
    }





  }

  /// instructor register
  void instructorRegister({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    emit(InstructorRegisterLoadingState());

    var headers = {
      'Content-Type': 'application/json',
    };

    /// post api
    try {
      var request = http.Request(
          'POST', Uri.parse('${baseUrl}instructors/register'));

      request.body = convert.jsonEncode(
        {
          "email": email,
          "password": password,
          "first_name": firstName,
          "last_name": lastName
        },
      );
      request.headers.addAll(headers);


      http.Response response = await http.Response.fromStream(
          await request.send());

      debugPrint("Status Code :: ${response.statusCode}");
      final result = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint("Response :: $result");

        instructortoken = result['token'];
        CacheHelper.saveData(
            key: 'instructortoken', value: instructortoken);

        Instructor_id = result['instructor_id'];
        CacheHelper.saveData(
            key: 'instructor_id', value:Instructor_id);

        debugPrint("Done1");
        emit(InstructorRegisterSuccessState());
        debugPrint("Done2");
      } else if (response.statusCode == 500) {
        debugPrint("Error1 :: ${response.reasonPhrase}");
        emit(InstructorRegisterErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      } else {
        debugPrint("Error2 :: ${response.reasonPhrase}");
        emit(InstructorRegisterErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      }
    } catch (e) {
      debugPrint("Error :: ${e.toString()}");
      emit(InstructorRegisterErrorState(
          error: e.toString()
      ));
    }
  }

  /// instructor login
  void instructorLogin({
    required String email,
    required String password,
  }) async{
    emit(InstructorLoginLoadingState());

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': "$instructortoken"
    };

    /// post api
    try {
      var request = http.Request(
          'POST', Uri.parse('${baseUrl}instructors/login'));

      request.body = convert.jsonEncode(
        {
          "email": email,
          "password" : password,
        },
      );
      request.headers.addAll(headers);



      http.Response response = await http.Response.fromStream(await request.send());

      debugPrint("Status Code :: ${response.statusCode}");
      final result = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if(response.statusCode == 200 || response.statusCode == 201){
        debugPrint("Response :: $result");

        instructortoken = result['token'];
        CacheHelper.saveData(
            key: 'instructortoken', value: instructortoken);

        Instructor_id = result['instructor_id'];
        CacheHelper.saveData(
            key: 'instructor_id', value:Instructor_id);

        emit(InstructorLoginSuccessState());
      } else if (response.statusCode == 500){
        debugPrint("Error1 :: ${response.reasonPhrase}");
        emit(InstructorLoginErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      } else {
        debugPrint("Error2 :: ${response.body}");
        emit(InstructorLoginErrorState(
            error: result['error'] ?? "Something went wrong"
        ));
      }


    } catch(e){
      debugPrint("Error :: ${e.toString()}");
      emit(InstructorLoginErrorState(
          error: e.toString()
      ));
    }
  }
}