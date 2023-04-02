import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';

class CourseDetails4 extends StatefulWidget {
  CourseDetails4({Key? key}) : super(key: key);
  static const String id = "CourseDetails4";

  @override
  State<CourseDetails4> createState() => _CourseDetails4State();
}

class _CourseDetails4State extends State<CourseDetails4> {
  bool flagTap = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: 15.00.h,
            start: 20.00.w,
            end: 20.00.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity.w,
                height: 200.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage(
                      ImagePath.programming,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Basic Human Anatomy & Physiology',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: FontPath.poppinsMedium,
                  color: Colors.black,
                ),
              ),
              Text(
                'Instructor | Nail Fontaine ',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: FontPath.poppinsLight,
                  color: AppColors.primaryButtonColor,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        flagTap = true;
                      });
                    },
                    child: Text(
                      'Lectures',
                      style: TextStyle(
                          fontFamily: FontPath.poppinsMedium,
                          fontSize: 15.sp,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5.00.w,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        flagTap = false;
                      });
                    },
                    child: Text(
                      'More',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsMedium,
                        fontSize: 15.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  flagTap
                      ? Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: 8.0.h,
                    ),
                    child: Container(
                      width: 70.w,
                      height: 3.h,
                      color: AppColors.primaryButtonColor,
                    ),
                  )
                      : Row(
                    children: [
                      SizedBox(
                        width: 75.00.w,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: 8.0.h,
                        ),
                        child: Container(
                          width: 50.w,
                          height: 3.h,
                          color: AppColors.primaryButtonColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: flagTap == true
                      ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Section 1 - Introduction',
                        style: TextStyle(
                          fontFamily: FontPath.poppinsLight,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Row(
                          children: [
                            Text(
                              '01',
                              style: TextStyle(
                                fontFamily: FontPath.poppinsMedium,
                                fontSize: 24.sp,
                                color: const Color(0xffA9D8F6),
                              ),
                            ),
                            SizedBox(
                              width: 20.00.h,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome to the Course',
                                    style: TextStyle(
                                      fontFamily:
                                      FontPath.poppinsRegular,
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'video - 6:10 mins',
                                    style: TextStyle(
                                      fontFamily:
                                      FontPath.poppinsRegular,
                                      fontSize: 14.sp,
                                      color:
                                      AppColors.primaryButtonColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 10.w),
                                side: BorderSide(
                                  width: 3.w,
                                  color: AppColors.primaryButtonColor,
                                ),
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.arrow_downward_rounded,
                                color: AppColors.primaryButtonColor,
                              ),
                            ),
                          ],
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 30.h,
                        ),
                        itemCount: 15,
                      ),
                    ],
                  )
                      : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Row(
                          children: [
                            Icon(
                              Icons.share_rounded,
                              size: 30.w,
                              color: AppColors.primaryButtonColor,
                            ),
                            SizedBox(
                              width: 20.00.h,
                            ),
                            Text(
                              'Welcome to the Course',
                              style: TextStyle(
                                fontFamily: FontPath.poppinsLight,
                                fontSize: 16.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 30.h,
                        ),
                        itemCount: 15,
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
