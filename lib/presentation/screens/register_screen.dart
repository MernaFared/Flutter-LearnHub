import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/logic/auth/auth_cubit.dart';
import 'package:graduation_project/logic/auth/auth_states.dart';
import 'package:graduation_project/presentation/screens/interests_screen.dart';
import 'package:graduation_project/presentation/screens/login_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

import '../../core/widgets/custom_textfield.dart';
import 'home_screens/home_screen_instructor.dart';

class RegisterScreen extends StatefulWidget {
  final String userType;
  const RegisterScreen({Key? key, required this.userType,}) : super(key: key);
  static const String id = "RegisterScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocConsumer<AuthCubit,AuthStates>(
        listener: (context,state){
          if(state is StudentRegisterSuccessState){
            navigateTo(context, const InterestsScreen());
          }
          if(state is StudentRegisterErrorState){
            showToast(
                text: state.error ?? "Something went wrong",
                state: ToastStates.ERROR);
            }
            if(state is InstructorRegisterSuccessState){
               debugPrint("Instructor register");
               navigateTo(context,HomeScreenInstructor(),);
            }
            if(state is InstructorRegisterErrorState){
              showToast(
                  text: state.error ?? "Something went wrong",
                  state: ToastStates.ERROR);}

        },
        builder: (context,state){
          return SafeArea(
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
                  Form(
                    key: formKey,
                    child: Padding(
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
                          /// First name
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 27.0.w),
                            child: CustomTextFormField(
                              controller: firstNameController,
                              labelText: "Enter your first name",
                              validatorFun: (String? value){
                                if(value!.isEmpty){
                                  return "First Name is required";
                                }
                                return null;
                              },
                            ),
                          ),
                          //customTextFormWithoutPrefix(text: 'Enter your full name'),
                          SizedBox(
                            height: 13.h,
                          ),
                          /// Last name
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 27.0.w),
                            child: CustomTextFormField(
                              controller: lastNameController,
                              labelText: "Enter your last name",
                              validatorFun: (String? value){
                                if(value!.isEmpty){
                                  return "Last Name is required";
                                }
                                return null;
                              },
                            ),
                          ),
                          //customTextFormWithoutPrefix(text: 'Enter your email.'),
                          SizedBox(
                            height: 13.h,
                          ),
                          /// Email
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 27.0.w),
                            child: CustomTextFormField(
                              controller: emailController,
                              textInputType: TextInputType.emailAddress,
                              labelText: "Enter your email",
                              validatorFun: (String? value){
                                if(value!.isEmpty){
                                  return "Email is required";
                                }
                                return null;
                              },
                            ),
                          ),
                          //customTextFormWithoutPrefix(text: 'Enter password'),
                          SizedBox(
                            height: 13.h,
                          ),
                          /// Password
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 27.0.w),
                            child: CustomTextFormField(
                              controller: passwordController,
                              isSecure: true,
                              labelText: "Enter your password",
                              validatorFun: (String? value){
                                if(value!.isEmpty){
                                  return "Password is required";
                                }
                                return null;
                              },
                            ),
                          ),
                          //customTextFormWithoutPrefix(text: 'Confirm Password'),
                          SizedBox(
                            height: 71.h,
                          ),
                          state is StudentRegisterLoadingState || state is InstructorRegisterLoadingState?
                          const Center(child: CircularProgressIndicator()) : Center(
                            child: customElevatedButton(
                              onPressed: () {
                                /// student register function
                                if(widget.userType == "student"){

                                 if(formKey.currentState!.validate()){
                                   FocusScope.of(context).unfocus();
                                   cubit.studentRegister(
                                       email: emailController.text.trim(), // "merna55@gmail.com",
                                       password: passwordController.text, //"P@ssw0rd123",
                                       firstName: firstNameController.text, //"merna",
                                       lastName: lastNameController.text, //"nasser"
                                   );

                                 }
                                  //navigateTo(context, const InterestsScreen(),);
                                }
                                /// instructor register function
                                if(widget.userType == "instructor"){
                                  if(formKey.currentState!.validate()){
                                    FocusScope.of(context).unfocus();
                                    cubit.instructorRegister(
                                      email: emailController.text.trim(), // "mernafared@gmail.com",
                                      password: passwordController.text, //"P@ssw0rd123",
                                      firstName: firstNameController.text, //"merna",
                                      lastName: lastNameController.text, //"fared"
                                    );

                                  }

                                }



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
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
