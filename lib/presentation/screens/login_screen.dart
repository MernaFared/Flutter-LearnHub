import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/logic/auth/auth_cubit.dart';
import 'package:graduation_project/logic/auth/auth_states.dart';
import 'package:graduation_project/presentation/screens/home_screens/home_screen.dart';
import 'package:graduation_project/presentation/screens/register_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

import '../../core/widgets/custom_textfield.dart';
import 'home_screens/home_screen_instructor.dart';
import 'main_layout.dart';

class LoginScreen extends StatefulWidget {
  final String userType;
  const LoginScreen({Key? key, required this.userType}) : super(key: key);
  static const String id = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: BlocConsumer<AuthCubit, AuthStates>(
          listener: (context, state) {
            if (state is StudentLoginErrorState) {
              showToast(
                  text: state.error ?? "Something went wrong",
                  state: ToastStates.ERROR);
            }
            if (state is StudentLoginSuccessState) {
              navigateTo(context, const MainLayoutScreen());
            }

            if (state is InstructorLoginSuccessState) {
              navigateTo(
                 context, HomeScreenInstructor());
            }
            if (state is InstructorLoginErrorState) {
              showToast(
                  text: state.error ?? "Something went wrong",
                  state: ToastStates.ERROR);
            }

          },
          builder: (context, state) {
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
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 27.0.w),
                              child: CustomTextFormField(
                                controller: emailController,
                                textInputType: TextInputType.emailAddress,
                                labelText: "Enter your email",
                                validatorFun: (String? value) {
                                  if (value!.isEmpty) {
                                    return "Email is required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            // customTextFormWithoutPrefix(text: 'Enter your email.'),
                            SizedBox(
                              height: 16.h,
                            ),
                            //customTextFormWithoutPrefix(text: 'Enter password'),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 27.0.w),
                              child: CustomTextFormField(
                                controller: passwordController,
                                isSecure: true,
                                labelText: "Enter your password",
                                validatorFun: (String? value) {
                                  if (value!.isEmpty) {
                                    return "Password is required";
                                  }
                                  return null;
                                },
                              ),
                            ),
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
                            state is StudentLoginLoadingState || state is InstructorLoginLoadingState
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : Center(
                                    child: customElevatedButton(
                                      onPressed: () {
                                        /// student login here
                                        if (widget.userType == "student") {
                                          if (formKey.currentState!
                                              .validate()) {
                                            FocusScope.of(context).unfocus();
                                            cubit.studentLogin(
                                              email:
                                                  emailController.text.trim(),
                                              password: passwordController
                                                  .text, // "P@ssw0rd123"
                                            );
                                          }

                                          /// student home screen after login
                                          //navigateTo(context, const MainLayoutScreen());
                                        }

                                        /// instructor login here
                                        if (widget.userType == "instructor") {
                                          if (formKey.currentState!
                                              .validate()) {
                                            FocusScope.of(context).unfocus();
                                            cubit.instructorLogin(
                                              email:
                                                  emailController.text.trim(),
                                              password: passwordController
                                                  .text, // "P@ssw0rd123"
                                            );
                                          }


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
                            Row(
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
                                      navigateTo(
                                          context,
                                          RegisterScreen(
                                            userType: widget.userType,
                                          ));
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
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
