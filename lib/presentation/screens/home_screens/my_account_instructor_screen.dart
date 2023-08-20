import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/core/cash_helper.dart';
import 'package:graduation_project/core/constants.dart';
import 'package:graduation_project/logic/instructor/instructor%20cubit.dart';
import 'package:graduation_project/models/settings_model.dart';
import 'package:graduation_project/presentation/screens/about_us_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/notification_screen.dart';
import 'package:graduation_project/presentation/screens/login_screen.dart';
import 'package:graduation_project/presentation/screens/slide_bar_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class MyAccountScreenInstructor extends StatefulWidget {
  MyAccountScreenInstructor({Key? key}) : super(key: key);
  static const String id = "MyAccountScreenInstructor";

  @override
  State<MyAccountScreenInstructor> createState() =>
      _MyAccountScreenInstructorState();
}

class _MyAccountScreenInstructorState extends State<MyAccountScreenInstructor> {
  List<SettingsAccountModel> settingsAccountModelList = [

    SettingsAccountModel(
      title: 'About Us',
      textColor: Colors.black,
      iconColor: Colors.blue,
    ),
    SettingsAccountModel(
      title: 'Log out',
      textColor: Colors.red,
      iconColor: Colors.red,
    ),

  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var cubit = InstructorCubit.get(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      // drawer: Drawer(
      //   child:SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding:
      //           EdgeInsetsDirectional.only(top: 35.0, start: 12, end: 12),
      //           child: Column(
      //             children: [
      //               Center(
      //                 child: Container(
      //                   width: 180.00,
      //                   height: 170.00,
      //                   decoration: const BoxDecoration(
      //                     shape: BoxShape.circle,
      //                     color: Color(0xffD9D9D9),
      //                   ),
      //                   child: Center(
      //                     child: Image.asset(
      //                       width: 136.09,
      //                       height: 150.93,
      //                       ImagePath.slider,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 10.0,
      //               ),
      //               Center(
      //                 child: Text(
      //                   'Bella Almeida',
      //                   style: TextStyle(
      //                     fontSize: 20,
      //                     fontFamily: FontPath.poppinsBold,
      //                     color: Colors.black,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(20),
      //           child: Column(
      //             children: [
      //               InkWell(
      //                 onTap: (){},
      //                 child: Row(
      //                   children: [
      //                     Icon(
      //                       Icons.text_fields_sharp,
      //                     ),
      //                     SizedBox(width: 10.0,),
      //                     Text('Title',style: TextStyle(
      //                       fontSize: 18.0,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.black,
      //
      //                     ),),
      //                   ],
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 20.0,
      //               ),
      //
      //               InkWell(
      //                 onTap: (){},
      //                 child: Row(
      //                   children: [
      //                     Icon(
      //                       Icons.person_outline_sharp,
      //                     ),
      //                     SizedBox(width: 10.0,),
      //                     Text('My Courses',style: TextStyle(
      //                       fontSize: 18.0,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.black,
      //
      //                     ),),
      //                   ],
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 20.0,
      //               ),
      //
      //
      //               InkWell(
      //                 onTap: (){},
      //                 child: Row(
      //                   children: [
      //                     Icon(
      //                       Icons.settings_outlined,
      //                     ),
      //                     SizedBox(width: 10.0,),
      //                     Text('Settings',style: TextStyle(
      //                       fontSize: 18.0,
      //                       fontWeight: FontWeight.bold,
      //                       color:  Colors.black,
      //
      //                     ),),
      //                   ],
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 20.0,
      //               ),
      //
      //               InkWell(
      //                 onTap: (){},
      //                 child: Row(
      //                   children: [
      //                     Icon(
      //                       Icons.warning_amber_rounded,
      //
      //                     ),
      //                     SizedBox(width: 10.0,),
      //                     Text('Report Problem',style: TextStyle(
      //                       fontSize: 18.0,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.black,
      //
      //                     ),),
      //                   ],
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 20.0,
      //               ),
      //
      //               InkWell(
      //                 onTap: (){},
      //                 child: Row(
      //                   children: [
      //                     Icon(
      //                       Icons.help_outline,
      //
      //                     ),
      //                     SizedBox(width: 10.0,),
      //                     Text('Help',style: TextStyle(
      //                       fontSize: 18.0,
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //
      //
      //                     ),),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //
      //       ],
      //     ),
      //   ),
      //
      //
      //
      // ),
      // appBar: AppBar(
      //   backgroundColor: AppColors.backgroundColor,
      //   leading: Builder(
      //     builder: (context) => IconButton(
      //       icon: Image.asset(ImagePath.menu),
      //       onPressed: () => Scaffold.of(context).openDrawer(),
      //     ),
      //   ),
      //   title: Center(
      //     child: Text(
      //       'My Account',
      //       style: TextStyle(
      //         fontSize: 18.sp,
      //         fontFamily: FontPath.poppinsMedium,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      // ),
      //
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.00.h,
              ),
              Container(
                width: double.infinity,
                height: 100.00.h,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor2,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(
                        0.w,
                        4.h,
                      ),
                      blurRadius: 4.r,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.00.r),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 86.00.w,
                      height: 82.00.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffD9D9D9),
                      ),
                      child: Center(
                        child: Image.asset(
                          width: 56.09.w,
                          height: 68.93.h,
                          ImagePath.avatar,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0.w,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                             "${cubit.instructorDataModel!.firstName} ${cubit.instructorDataModel!.lastName}",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: FontPath.poppinsBold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "${cubit.instructorDataModel!.email}",
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: FontPath.poppinsMedium,
                              color: Colors.black,
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35.00.h,
              ),
              Text(
                'Settings',
                style: TextStyle(
                  fontSize: 23.sp,
                  fontFamily: FontPath.poppinsBold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.00.h,
              ),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => settingsAccountItem(
                      context, settingsAccountModelList[index], () {
                        /// about us function
                   if(index == 0){
                     navigateTo(context, const AboutUsScreen());
                   }
                   /// logout function
                   if(index == 1){
                    cubit.instructorDataModel = null;
                    Instructor_id = null;
                    instructortoken = null;
                    CacheHelper.removeData(key: "instructortoken");
                    CacheHelper.removeData(key: "instructor_id");

                    navigateAndFinish(context, const LoginScreen(userType: "instructor"));

                   }

                  }),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.h,
                  ),
                  itemCount: settingsAccountModelList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );


  }
}
