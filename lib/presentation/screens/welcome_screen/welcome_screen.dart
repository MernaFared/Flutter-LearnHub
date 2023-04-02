// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/presentation/screens/login_screen.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/font_path.dart';
import '../../../core/assets_path/images_path.dart';
import '../../widgets/components.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * .07,),
              Container(
                height: 258,
                width: 258,
                child: Image.asset(ImagePath.getStart),
              ),
              SizedBox(height: height * .04,),
              Text(
                'Welcome \n to Learnhub App',
                style: TextStyle(
                  fontFamily: FontPath.poppinsBold,
                  fontSize: 22.00.sp,
                  color: AppColors.titleColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height*.02,
              ),
              Text(
                'You can join as student or instructor',
                style: TextStyle(
                  fontFamily: FontPath.quicksandMedium,
                  fontSize: 18.00.sp,
                  color: AppColors.paragraphColor,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height*.06,
              ),
              customElevatedButton(
                onPressed: () {
                  navigateTo(context, const LoginScreen(
                    userType: "student",
                  ));
                },
                text: 'Login as Student',
              ),
              SizedBox(
                height: height*.02,
              ),
              customElevatedButton(
                onPressed: () {
                  navigateTo(context, const LoginScreen(
                    userType: "instructor",
                  ));
                },
                text: 'Login as Instructor',
              )
            ],
          ),
        ),
      ),
    );
  }
}
