import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/models/course_content_model.dart';
import 'package:graduation_project/presentation/screens/home_screens/start_successful_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class CourseDetails1 extends StatelessWidget {
  CourseDetails1({Key? key}) : super(key: key);
  static const String id = "CourseDetails1";
  List<CourseContentModel> courseContentModelList = [
    CourseContentModel(
      courseNumber: '01',
      title: 'Welcome to the Course',
      mins: '6:10',
      iconData: Icons.play_arrow,
      color: AppColors.primaryButtonColor,
    ),
    CourseContentModel(
      courseNumber: '02',
      title: 'Process overview',
      mins: '6:10',
      iconData: Icons.play_arrow,
      color: AppColors.primaryButtonColor,
    ),
    CourseContentModel(
      courseNumber: '03',
      title: 'Discovery',
      mins: '6:10',
      iconData: Icons.lock_outline,
      color: AppColors.primaryButtonColor.withOpacity(0.2),
    ),
    CourseContentModel(
      courseNumber: '01',
      title: 'Welcome to the Course',
      mins: '6:10',
      iconData: Icons.play_arrow,
      color: AppColors.primaryButtonColor,
    ),
    CourseContentModel(
      courseNumber: '02',
      title: 'Process overview',
      mins: '6:10',
      iconData: Icons.lock_outline,
      color: AppColors.primaryButtonColor.withOpacity(0.2),
    ),
    CourseContentModel(
      courseNumber: '03',
      title: 'Discovery',
      mins: '6:10',
      iconData: Icons.play_arrow,
      color: AppColors.primaryButtonColor,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor2,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: const Color(0xff2778F0),
            size: 30.00.r,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(image: AssetImage(ImagePath.shape)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: const Image(
                    image: AssetImage(ImagePath.rectangle),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: const Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Image(
                      image: AssetImage(ImagePath.person),
                    ),
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.r),
                  topRight: Radius.circular(35.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 34.h,
                  right: 20.w,
                  left: 20.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Product Design v1.0',
                          style: TextStyle(
                            fontFamily: FontPath.poppinsBold,
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(
                          width: 26.w,
                        ),
                        Text(
                          '\$74.00',
                          style: TextStyle(
                              fontFamily: FontPath.poppinsBold,
                              fontSize: 20.sp,
                              color: AppColors.primaryButtonColor),
                        ),
                      ],
                    ),
                    Text(
                      '6h 14min · 24 Lessons',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsRegular,
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'About this course',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsBold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      'Take your idea from concept to creation! No design experience needed!',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsRegular,
                        fontSize: 12.sp,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          customCourseContent(courseContentModelList[index]),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                      itemCount: courseContentModelList.length,
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar:  Container(
        width: double.infinity.w,
        height: 100.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(
                2.w,
                0.h,
              ),
              blurRadius: 4.r,
              color: Colors.black.withOpacity(0.25),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(17.r),
            topRight: Radius.circular(17.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 85.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.00.r),
                  color: AppColors.bottomButton,
                ),
                child: const Icon(Icons.star_border),
              ),
              SizedBox(
                width: 30.w,
              ),
              Expanded(
                child: customElevatedButton(
                  onPressed: () {
                    navigateTo(context, const StartSuccessScreen());
                  },
                  text: 'Enroll',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
