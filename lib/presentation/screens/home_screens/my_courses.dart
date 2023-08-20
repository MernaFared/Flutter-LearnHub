import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details2.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details3.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details4.dart';
import 'package:graduation_project/presentation/widgets/components.dart';
import 'package:graduation_project/presentation/widgets/custom_timer_progress.dart';

import '../../../models/course_model.dart';

class MyCoursesScreen extends StatelessWidget {
  MyCoursesScreen({Key? key}) : super(key: key);
  static const String id = "MyCoursesScreen";
  double val = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 8.0.h,
            left: 20.00.w,
            right: 20.00.w,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'My Courses',
                        style: TextStyle(
                          fontFamily: FontPath.poppinsMedium,
                          fontSize: 18.0.sp,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
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
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 120.0.h,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                      child: Padding(
                        padding:
                          EdgeInsets.symmetric(horizontal: 12.0.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Learned today',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: FontPath.poppinsMedium,
                                color: AppColors.textCoursesColor,
                              ),
                            ),
                            Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '46min',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: FontPath.poppinsBold,
                                    color: AppColors.textCoursesMinColor,
                                  ),
                                ),
                                Text(
                                  '/ 60min',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: FontPath.poppinsMedium,
                                    color: AppColors.textCoursesColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            CustomTimerProgress(
                                maxTime: 60,
                                minTime: 30,
                                containerWidth: 300.w,
                                progressColor: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              navigateTo(context,CourseDetails2());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0.w,
                                      7.h,
                                    ),
                                    blurRadius: 4.r,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22.00.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  // ClipRRect(
                                  //   borderRadius: BorderRadius.circular(38.0),
                                  //   child: Image(image: AssetImage('assets/images/graphic.jpg',
                                  //   ),width: 97.0,
                                  //     height: 95.0,
                                  //
                                  //   ),
                                  // ),
                                  Container(
                                    height:80.0,
                                    width:80.0,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image:DecorationImage(
                                        image:AssetImage('assets/images/graphic.jpg',
                                            ),
                                        fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 18.h,
                                      bottom: 8.0.h,
                                      left: 6.0.w,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Flutter',
                                          style: TextStyle(
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          maxLines: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 7.h,
                                            bottom: 15.h,
                                            left: 6.w,
                                          ),
                                          child: Text(
                                            '7hrs 77 min',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff1F1F39),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 6.h,
                                                  width: 122.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade300,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        60.00.r),
                                                  ),
                                                ),
                                                Container(
                                                  height: 6.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red
                                                            .withOpacity(0.4),
                                                        Colors.red,
                                                      ],
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              '70/77',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff1F1F39),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              navigateTo(context,CourseDetails2());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0.w,
                                      7.h,
                                    ),
                                    blurRadius: 4.r,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22.00.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                              Container(
                                height:80.0,
                                width:80.0,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image:DecorationImage(
                                      image:AssetImage('assets/images/graphic.jpg',
                                      ),
                                      fit:BoxFit.fill
                                  ),
                                ),
                              ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 18.h,
                                      bottom: 8.0.h,
                                      left: 6.0.w,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Flutter',
                                          style: TextStyle(
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          maxLines: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 7.h,
                                            bottom: 15.h,
                                            left: 6.w,
                                          ),
                                          child: Text(
                                            '7hrs 77 min',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff1F1F39),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 6.h,
                                                  width: 122.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade300,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        60.00.r),
                                                  ),
                                                ),
                                                Container(
                                                  height: 6.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red
                                                            .withOpacity(0.4),
                                                        Colors.red,
                                                      ],
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              '70/77',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff1F1F39),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              navigateTo(context,CourseDetails2());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0.w,
                                      7.h,
                                    ),
                                    blurRadius: 4.r,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22.00.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Container(
                                    height:80.0,
                                    width:80.0,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image:DecorationImage(
                                          image:AssetImage('assets/images/graphic.jpg',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 18.h,
                                      bottom: 8.0.h,
                                      left: 6.0.w,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Flutter',
                                          style: TextStyle(
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          maxLines: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 7.h,
                                            bottom: 15.h,
                                            left: 6.w,
                                          ),
                                          child: Text(
                                            '7hrs 77 min',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff1F1F39),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 6.h,
                                                  width: 122.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade300,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        60.00.r),
                                                  ),
                                                ),
                                                Container(
                                                  height: 6.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red
                                                            .withOpacity(0.4),
                                                        Colors.red,
                                                      ],
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              '70/77',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff1F1F39),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              navigateTo(context,CourseDetails2());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0.w,
                                      7.h,
                                    ),
                                    blurRadius: 4.r,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22.00.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Container(
                                    height:80.0,
                                    width:80.0,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image:DecorationImage(
                                          image:AssetImage('assets/images/graphic.jpg',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 18.h,
                                      bottom: 8.0.h,
                                      left: 6.0.w,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Flutter',
                                          style: TextStyle(
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          maxLines: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 7.h,
                                            bottom: 15.h,
                                            left: 6.w,
                                          ),
                                          child: Text(
                                            '7hrs 77 min',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff1F1F39),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 6.h,
                                                  width: 122.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade300,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        60.00.r),
                                                  ),
                                                ),
                                                Container(
                                                  height: 6.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red
                                                            .withOpacity(0.4),
                                                        Colors.red,
                                                      ],
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              '70/77',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff1F1F39),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              navigateTo(context,CourseDetails2());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0.w,
                                      7.h,
                                    ),
                                    blurRadius: 4.r,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22.00.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Container(
                                    height:80.0,
                                    width:80.0,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image:DecorationImage(
                                          image:AssetImage('assets/images/graphic.jpg',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 18.h,
                                      bottom: 8.0.h,
                                      left: 6.0.w,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Flutter',
                                          style: TextStyle(
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          maxLines: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 7.h,
                                            bottom: 15.h,
                                            left: 6.w,
                                          ),
                                          child: Text(
                                            '7hrs 77 min',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff1F1F39),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 6.h,
                                                  width: 122.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade300,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        60.00.r),
                                                  ),
                                                ),
                                                Container(
                                                  height: 6.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red
                                                            .withOpacity(0.4),
                                                        Colors.red,
                                                      ],
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              '70/77',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff1F1F39),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              navigateTo(context,CourseDetails2());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0.w,
                                      7.h,
                                    ),
                                    blurRadius: 4.r,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22.00.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Container(
                                    height:80.0,
                                    width:80.0,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image:DecorationImage(
                                          image:AssetImage('assets/images/graphic.jpg',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 18.h,
                                      bottom: 8.0.h,
                                      left: 6.0.w,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Flutter',
                                          style: TextStyle(
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          maxLines: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 7.h,
                                            bottom: 15.h,
                                            left: 6.w,
                                          ),
                                          child: Text(
                                            '7hrs 77 min',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff1F1F39),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 6.h,
                                                  width: 122.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade300,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        60.00.r),
                                                  ),
                                                ),
                                                Container(
                                                  height: 6.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red
                                                            .withOpacity(0.4),
                                                        Colors.red,
                                                      ],
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              '70/77',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff1F1F39),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              navigateTo(context,CourseDetails2());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0.w,
                                      7.h,
                                    ),
                                    blurRadius: 4.r,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22.00.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Container(
                                    height:80.0,
                                    width:80.0,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image:DecorationImage(
                                          image:AssetImage('assets/images/graphic.jpg',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 18.h,
                                      bottom: 8.0.h,
                                      left: 6.0.w,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Flutter',
                                          style: TextStyle(
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          maxLines: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 7.h,
                                            bottom: 15.h,
                                            left: 6.w,
                                          ),
                                          child: Text(
                                            '7hrs 77 min',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff1F1F39),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 6.h,
                                                  width: 122.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade300,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        60.00.r),
                                                  ),
                                                ),
                                                Container(
                                                  height: 6.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red
                                                            .withOpacity(0.4),
                                                        Colors.red,
                                                      ],
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              '70/77',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff1F1F39),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              navigateTo(context,CourseDetails2());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0.w,
                                      7.h,
                                    ),
                                    blurRadius: 4.r,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22.00.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Container(
                                    height:80.0,
                                    width:80.0,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image:DecorationImage(
                                          image:AssetImage('assets/images/graphic.jpg',
                                          ),
                                          fit:BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 18.h,
                                      bottom: 8.0.h,
                                      left: 6.0.w,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Flutter',
                                          style: TextStyle(
                                            fontWeight:
                                            FontWeight.bold,
                                            fontSize: 16.sp,
                                          ),
                                          maxLines: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 7.h,
                                            bottom: 15.h,
                                            left: 6.w,
                                          ),
                                          child: Text(
                                            '7hrs 77 min',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff1F1F39),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 6.h,
                                                  width: 122.w,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey.shade300,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        60.00.r),
                                                  ),
                                                ),
                                                Container(
                                                  height: 6.h,
                                                  width: 80.w,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.red
                                                            .withOpacity(0.4),
                                                        Colors.red,
                                                      ],
                                                      begin: Alignment.centerLeft,
                                                      end: Alignment.centerRight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              '70/77',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff1F1F39),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
           
         
              
              

            ],
          ),
        ),
      ),
    );
  }
}
