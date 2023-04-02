import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details2.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class StartSuccessScreen extends StatefulWidget {
  const StartSuccessScreen({Key? key}) : super(key: key);
  static const String id = "StartSuccessScreen";

  @override
  State<StartSuccessScreen> createState() => _StartSuccessScreenState();
}

class _StartSuccessScreenState extends State<StartSuccessScreen> {

  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 3,
        ), () {
          navigateTo(context, CourseDetails2());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                ImagePath.celebrate,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Start Learning',
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: FontPath.poppinsMedium,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
