import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/presentation/screens/interests_screen.dart';
import 'package:graduation_project/presentation/screens/login_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key,}) : super(key: key);
  static const String id = "RegisterScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: [
              Stack(
                children: [
                  Image(
                    height: 135.00.h,
                    image: const AssetImage(
                      ImagePath.circlePart1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                    child: Image(
                      width: 135.00.w,
                      image: const AssetImage(
                        ImagePath.circlePart2,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 87.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Welcome \n LearnHub',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: FontPath.poppinsBold,
                            fontSize: 24.00.sp,
                            color: Colors.black),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Let’s get your career ready.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: FontPath.poppinsRegular,
                            fontSize: 13.00.sp,
                            color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    customTextFormWithoutPrefix(text: 'Enter your full name'),
                    SizedBox(
                      height: 13.h,
                    ),
                    customTextFormWithoutPrefix(text: 'Enter your email.'),
                    SizedBox(
                      height: 13.h,
                    ),
                    customTextFormWithoutPrefix(text: 'Enter password'),
                    SizedBox(
                      height: 13.h,
                    ),
                    customTextFormWithoutPrefix(

                        text: 'Confirm Password'),
                    SizedBox(
                      height: 71.h,
                    ),
                    Center(
                      child: customElevatedButton(
                        onPressed: () {
                          /// student register function
                          navigateTo(context, const InterestsScreen(),);


                        },
                        text: 'Register',
                        fontSize: 18.sp,
                        borderRadius: 20.00.r,
                      ),
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontFamily: FontPath.poppinsMedium,
                            fontSize: 14.00.sp,
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        TextButton(
                          onPressed: () {
                            navigateTo(context, const LoginScreen(
                              userType: 'student',
                            ));
                          },
                          child: Text(
                            'sign in',
                            style: TextStyle(
                              fontFamily: FontPath.poppinsBold,
                              fontSize: 14.00.sp,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
