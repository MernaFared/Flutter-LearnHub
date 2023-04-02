import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/presentation/screens/register_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

import 'home_screens/home_screen_instructor.dart';
import 'main_layout.dart';

class LoginScreen extends StatelessWidget {
  final String userType;
  const LoginScreen({Key? key, required this.userType}) : super(key: key);
  static const String id = "LoginScreen";

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
                padding: EdgeInsets.only(top: 100.0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Welcome Back!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: FontPath.poppinsBold,
                          fontSize: 24.00.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const Center(
                      child: Image(
                        image: AssetImage(
                          ImagePath.login,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    customTextFormWithoutPrefix(text: 'Enter your email.'),
                    SizedBox(
                      height: 16.h,
                    ),
                    customTextFormWithoutPrefix(text: 'Enter password'),
                    SizedBox(
                      height: 16.h,
                    ),
                    TextButton(
                      onPressed: () {
                        //navigateTo(context,  RegisterScreen());
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontFamily: FontPath.poppinsBold,
                          fontSize: 14.00.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Center(
                      child: customElevatedButton(
                        onPressed: () {
                          /// student login here
                          if(userType == "student"){
                            /// student home screen after login
                            navigateTo(context, const MainLayoutScreen());
                          }


                          /// instructor login here
                          if(userType == "instructor"){
                            navigateTo(context, HomeScreenInstructor());
                          }
                        },
                        text: 'Login',
                        fontSize: 18.sp,
                        borderRadius: 20.00.r,
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    if(userType == "student") Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
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
                              navigateTo(context,  const RegisterScreen());
                            },
                            child: Text(
                              'sign up',
                              style: TextStyle(
                                fontFamily: FontPath.poppinsBold,
                                fontSize: 14.00.sp,
                              ),
                            ))
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
