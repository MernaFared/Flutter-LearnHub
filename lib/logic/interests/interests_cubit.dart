import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../core/cash_helper.dart';
import '../../core/constants.dart';
import 'interests_states.dart';

class InterestsCubit extends Cubit<InterestsStates> {
  InterestsCubit() :super(InterestsInitialState());

  static InterestsCubit get(context) => BlocProvider.of(context);
  List<String>interests=[];

  /// Interests
  void Choosinginterests({
    required int user_id,
    required List<String> interests,
  }) async {
    emit(ChoosinginterestsLoadingState());

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': "$token"
    };

    /// post api
    try {
      var request = http.Request(
          'POST', Uri.parse('${baseUrl}chooseInterests')); //

      request.body = convert.jsonEncode(
        {
          "student_id": user_id,
          "interests": interests,
        },
      );
      request.headers.addAll(headers);


      http.Response response = await http.Response.fromStream(
          await request.send());

      debugPrint("Status Code :: ${response.statusCode}");
      //debugPrint("Interests Response :: ${response.body}");

      //final result = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode == 200 || response.statusCode == 201) {
        //debugPrint("Response2 :: $result");



        emit(ChoosinginterestsSuccessState());
      } else if (response.statusCode == 500) {
        debugPrint("Error1 :: ${response.reasonPhrase}");
        emit(ChoosinginterestsErrorState(
            error: "Something went wrong"
        ));
      } else {
        debugPrint("Error2 :: ${response.body}");
        emit(ChoosinginterestsErrorState(
            error: "Something went wrong"
        ));
      }
    } catch (e) {
      debugPrint("Error :: ${e.toString()}");
      emit(ChoosinginterestsErrorState(
          error: e.toString()
      ));
    }



    /// instructor Login

  }
}