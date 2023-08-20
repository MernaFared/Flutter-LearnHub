import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/models/category_model.dart';
import 'package:graduation_project/models/course_content_model.dart';
import 'package:graduation_project/models/course_item_model.dart';
import 'package:graduation_project/models/course_model.dart';
import 'package:graduation_project/models/enrolled_courses_model.dart';
import 'package:graduation_project/models/explore_course_model.dart';
import 'package:graduation_project/models/instructor_course_model.dart';
import 'package:graduation_project/models/interests_model.dart';
import 'package:graduation_project/models/on_boarding_model.dart';
import 'package:graduation_project/models/popular_course_model.dart';
import 'package:graduation_project/models/recommendation_model.dart';
import 'package:graduation_project/models/settings_model.dart';
import 'package:graduation_project/models/slider_component_model.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details1.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details4.dart';
import 'package:graduation_project/presentation/widgets/custom_timer_progress.dart';

import '../../core/assets_path/font_path.dart';
import '../../models/instructor/instructorCoursesModel.dart';
import '../screens/home_screens/instructor_course_details.dart';
import '../screens/instructor_screens/course_students/course_students_screen.dart';


// important widgets
Widget customElevatedButton({
  required Function onPressed,
  required String text,
  String fontFamily = FontPath.poppinsBold,
  double fontSize = 22.00,
  double borderRadius = 10.00,
  Color color = AppColors.primaryButtonColor,
}) =>
    SizedBox(
      width: 287.w,
      height: 54.h,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset(
              8.w,
              0.h,
            ),
            blurRadius: 10.r,
            color: Colors.black.withOpacity(0.20),
          ),
        ]),
        child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius.r)),
            foregroundColor: Colors.white,
            backgroundColor: color,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: fontFamily,
              fontSize: fontSize.sp,
            ),
          ),
        ),
      ),
    );

Widget customSecondaryButton({
  required Function onPressed,
  required String text,
  String fontFamily = FontPath.poppinsMedium,
  double fontSize = 22.00,
  double borderRadius = 50.00,
  Color color = AppColors.secondaryButtonColor,
}) =>
    SizedBox(
      width: 287.w,
      height: 54.h,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius.r)),
          foregroundColor: Colors.white,
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize.sp,
          ),
        ),
      ),
    );

Widget customSkipOrNextTextButton({
  required Function onPressed,
  required String text,
}) =>
    TextButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontFamily: FontPath.poppinsBold,
          color: Colors.black,
          fontSize: 19.sp,
        ),
      ),
    );

Widget customTextFormWithoutPrefix({
  required String text,
}) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.0.w),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
            fontFamily: FontPath.poppinsRegular,
            fontSize: 14.00.sp,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
      ),
    );

Widget customTextFormWithPrefix({
  required String text,
  required IconData prefixIcon,
}) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.0.w),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
            fontFamily: FontPath.poppinsRegular,
            fontSize: 14.00.sp,
          ),
          prefixIcon: Icon(
            prefixIcon,
            size: 35.r,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
      ),
    );

Widget teamMemberSide({
  required TextDirection textDecoration,
  required String image,
  required String title,
  required String jobTitle,
}) =>
    Directionality(
      textDirection: textDecoration,
      child: Row(
        children: [
          CircleAvatar(
            radius: 50.r,
            backgroundImage: AssetImage(
              image,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: FontPath.poppinsMedium,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  jobTitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: FontPath.poppinsRegular,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

// important items.
Widget customInterestsItem(InterestsModel interestsModel) => Container(
      width: 152.w,
      height: 62.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            interestsModel.image,
          ),
          fit: BoxFit.cover,
          opacity: 0.80,
        ),
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Center(
        child: Text(
          interestsModel.text,
          style: TextStyle(
              fontFamily: FontPath.quicksandSemiBold,
              fontSize: 17.sp,
              color: Colors.white),
        ),
      ),
    );

Widget customOnBoardingItem(OnBoardingModelScreens onBoardingModelScreens) =>
    Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: 346.w,
                height: 274.h,
                child: Image.asset(
                  onBoardingModelScreens.image,
                ),
              ),
            ),
            SizedBox(
              height: 62.h,
            ),
            Text(
              onBoardingModelScreens.title,
              style: TextStyle(
                fontFamily: FontPath.poppinsBold,
                fontSize: 22.00.sp,
                color: AppColors.titleColor,
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Text(
              onBoardingModelScreens.paragraph,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FontPath.quicksandMedium,
                fontSize: 18.00.sp,
                color: AppColors.paragraphColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 94.h,
            ),
          ],
        ),
      ),
    );
Widget defaultformfield({
  required TextEditingController controller,
  required TextInputType type,
  Function(String x)?onchange,
  required String? Function(String?val)?validator,
  required String label,
  required IconData prefix,
  VoidCallback? ontap,
  bool isclickable=true,
})=> TextFormField(
  controller: controller,
  decoration: InputDecoration(
    prefixIcon: Icon(
      prefix,
    ),
    labelText: label,
    border: OutlineInputBorder(),
  ),
  validator: validator,
  onTap: ontap,
  keyboardType:type,
  onChanged:onchange,
  enabled: isclickable,

);
showloding (context){

  return showDialog(
      barrierDismissible : false,
      context: context, builder: (context){
    return
      AlertDialog(
        backgroundColor: Color.fromARGB(166, 0, 0, 0),
        actionsAlignment: MainAxisAlignment.center,
        title: const Center(child: Text("Please wait",style: TextStyle(fontFamily: "Cairo" , color: Colors.white),),),
        // ignore: sized_box_for_whitespace
        content: Container(
          height: 50,
          child:
          const Center(child:
          CircularProgressIndicator(color: Color.fromARGB(255, 255, 255, 255))
            ,)
          ,),
      );

  });


}

Widget enrolledCourseItem(
        EnrolledCoursesModel enrolledCoursesModel, BuildContext context) =>
    Container(
      width: 300.00.w,
      height: 165.00.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(enrolledCoursesModel.image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(30.00.r),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 30.00.w, top: 15.00.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              enrolledCoursesModel.startText,
              style: TextStyle(
                fontFamily: FontPath.poppinsRegular,
                fontSize: 15.00.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.00.h,
            ),
            Text(
              enrolledCoursesModel.titleText,
              style: TextStyle(
                fontFamily: FontPath.poppinsBold,
                fontSize: 20.00.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.00.h,
            ),
            Text(
              enrolledCoursesModel.lessonsText,
              style: TextStyle(
                fontFamily: FontPath.poppinsRegular,
                fontSize: 12.0.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.00.h,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.5.r)),
                side: BorderSide(
                  width: 3.0.w,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                navigateTo(context, CourseDetails4());
              },
              child: Text(
                enrolledCoursesModel.btnText,
                style: TextStyle(
                  fontFamily: FontPath.poppinsBold,
                  fontSize: 12.63.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget popularCourseItem(PopularCoursesModel popularCoursesModel,context) => Container(
      width: 300.00.w,
      height: 200.00.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(popularCoursesModel.image,),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(30.00.r),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 30.00.w, top: 15.00.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              popularCoursesModel.title,
              style: TextStyle(
                fontFamily: FontPath.poppinsBold,
                fontSize: 20.00.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.00.h,
            ),
            Text(
              popularCoursesModel.lessonNumber,
              style: TextStyle(
                fontFamily: FontPath.poppinsRegular,
                fontSize: 12.00.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.00.h,
            ),
            Row(
              children: [
                StatefulBuilder(
                  builder: (BuildContext context, setState) {
                    return RatingBar.builder(
                      itemSize: 25.r,
                      minRating: 1,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        setState(() {});
                      },
                    );
                  },
                ),
                SizedBox(
                  width: 5.0.w,
                ),
                Text(
                  popularCoursesModel.rate,
                  style: TextStyle(
                    fontFamily: FontPath.poppinsMedium,
                    fontSize: 15.00.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.5.r)),
                  side: BorderSide(
                    width: 2.0.w,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {
                  navigateTo(context,CourseDetails1());
                },
                child: Text(
                   'Enroll',
                  style: TextStyle(
                    fontFamily: FontPath.poppinsMedium,
                    fontSize: 12.00.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget recommendedCourseItem(BuildContext context, RecommendationModel model) =>
    Container(
      width: 300.00.w,
      height: 180.00.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(model.image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(30.00.r),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 30.00.w, top: 15.00.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.title,
              style: TextStyle(
                fontFamily: FontPath.poppinsBold,
                fontSize: 20.00.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.00.h,
            ),
            Text(
              model.lessonNumber,
              style: TextStyle(
                fontFamily: FontPath.poppinsRegular,
                fontSize: 12.00.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.00.h,
            ),
            Row(
              children: [
                StatefulBuilder(
                  builder: (BuildContext context, setState) {
                    return RatingBar.builder(
                      itemSize: 25.r,
                      minRating: 1,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        setState(() {});
                      },
                    );
                  },
                ),
                SizedBox(
                  width: 5.0.w,
                ),
                Text(
                  model.rate,
                  style: TextStyle(
                    fontFamily: FontPath.poppinsMedium,
                    fontSize: 15.00.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.00.h,
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.5.r)),
                    side: BorderSide(
                      width: 3.0.w,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    navigateTo(context, CourseDetails1());
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                    child: Text(
                      'Enroll',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsBold,
                        fontSize: 12.63.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget customCourseItem(CourseItemModel courseItemModel) => Container(
      width: double.infinity.w,
      height: 100.00.h,
      decoration: BoxDecoration(
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
          color: AppColors.courseItemColorBack,
          borderRadius: BorderRadius.circular(20.00.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 116.w,
              height: 85.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.00.r),
                image: DecorationImage(
                  image: AssetImage(
                    courseItemModel.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    courseItemModel.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontPath.poppinsBold,
                      fontSize: 14.sp,//error space
                    ),
                  ),
                  Text(
                    courseItemModel.lessonNumber,
                    style: TextStyle(
                      fontFamily: FontPath.poppinsRegular,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.5.r)),
                  side: BorderSide(
                    width: 2.0.w,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  courseItemModel.btnText,
                  style: TextStyle(
                    fontFamily: FontPath.poppinsMedium,
                    fontSize: 10.00.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget customCourseItem2(CourseItemModel courseItemModel, Function onTap) =>
    GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        height: 120.00.h,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset(
              0.w,
              4.h,
            ),
            blurRadius: 4.r,
            color: Colors.black.withOpacity(0.25),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(20.00.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 77.w,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.00.r),
                  image: DecorationImage(
                    image: AssetImage(
                      courseItemModel.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      courseItemModel.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontPath.poppinsMedium,
                        fontSize: 14.sp,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          courseItemModel.lessonNumber,
                          style: TextStyle(
                            fontFamily: FontPath.poppinsRegular,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        StatefulBuilder(
                          builder: (BuildContext context, setState) {
                            return RatingBar.builder(
                              itemSize: 20.r,
                              minRating: 1,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                setState(() {});
                              },
                            );
                          },
                        ),
                        SizedBox(
                          width: 5.00.w,
                        ),
                        Text(
                          '5.0',
                          style: TextStyle(
                            fontFamily: FontPath.poppinsRegular,
                            fontSize: 15.00.sp,
                            color: Colors.black,
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
    );

Widget exploreCourseItem(ExploreCourseModel exploreCourseModel) => Container(
      width: double.infinity.w,
      height: 150.00.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            exploreCourseModel.image,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.0.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exploreCourseModel.courseText,
                style: TextStyle(
                  fontFamily: FontPath.poppinsMedium,
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
              ),
              Text(
                // '${number}'
                exploreCourseModel.lessonsText,
                style: TextStyle(
                  fontFamily: FontPath.poppinsRegular,
                  color: Colors.white,
                  fontSize: 10.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );

Widget courseItem(CourseModel courseModel) => Container(
      width: 160.0.w,
      height: 160.0.h,
      decoration: BoxDecoration(
        color: courseModel.backColor,
        borderRadius: BorderRadius.circular(10.00.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 10.h),
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 10.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                courseModel.title,
                style: TextStyle(
                  fontFamily: FontPath.poppinsBold,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ),
            CustomTimerProgress(
              maxTime: courseModel.maxVal,
              minTime: courseModel.minVal,
              containerWidth: 122.w,
              progressColor: courseModel.progressColor,
              backColor: Colors.white,
              isCourse: true,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              courseModel.description,
              style: TextStyle(
                fontFamily: FontPath.poppinsRegular,
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
            Text(
              '${courseModel.minVal} / ${courseModel.maxVal}',
              style: TextStyle(
                fontFamily: FontPath.poppinsBold,
                fontSize: 20.sp,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: CircleAvatar(
                  backgroundColor: courseModel.videoColor,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget customCatItem(CategoryModel categoryModel) => Container(
      height: 35.0.h,
      decoration: BoxDecoration(
        color: AppColors.searchTextForm,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 15.00.w),
        child: Text(
          categoryModel.title,
          style: TextStyle(
              fontFamily: FontPath.poppinsRegular,
              fontSize: 12.00.sp,
              color: Colors.black),
        ),
      ),
    );

Widget customCourseContent(CourseContentModel contentModel) => Row(
      children: [
        Text(
          contentModel.courseNumber,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contentModel.title,
                style: TextStyle(
                  fontFamily: FontPath.poppinsRegular,
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
              ),
              Text(
                '${contentModel.mins} mins',
                style: TextStyle(
                  fontFamily: FontPath.poppinsRegular,
                  fontSize: 14.sp,
                  color: AppColors.primaryButtonColor,
                ),
              ),
            ],
          ),
        ),
        CircleAvatar(
          backgroundColor: contentModel.color,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              contentModel.iconData,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );

Widget settingsAccountItem(BuildContext context,
        SettingsAccountModel settingsAccountModel, void Function()? onTap) =>
    GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            settingsAccountModel.title,
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: FontPath.poppinsBold,
              color: settingsAccountModel.textColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 30.0.r,
              color: settingsAccountModel.iconColor,
            ),
          ),
        ],
      ),
    );

Widget sliderComponent(SliderModel sliderModel) => Row(
      children: [
        Icon(
          sliderModel.iconData,
          size: 35.00.r,
        ),
        SizedBox(
          width: 5.0.w,
        ),
        Text(
          sliderModel.title,
          style: TextStyle(
            fontSize: 20.sp,
            fontFamily: FontPath.poppinsRegular,
            color: Colors.black,
          ),
        ),
      ],
    );

Widget instructorCourseItem(InstructorCourseModel instructorCourseModel,BuildContext context) =>
    Container(
      width: double.infinity,
      height: 140.h,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor2,
        borderRadius: BorderRadius.circular(10.r),
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
      ),
      child: InkWell(
        onTap: (){
          navigateTo(context, const InstructorCourseDetails());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: 10.00.h,
                start: 10.00.w,
                end: 10.00.w,
              ),
              child: Row(
                children: [
                  Container(
                    width: 120.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                           ImagePath.photography,
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        width: 1.w,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                  ),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          instructorCourseModel.courseTitle!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: FontPath.poppinsMedium,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          instructorCourseModel.courseBrief!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: FontPath.poppinsMedium,
                            fontSize: 14.sp,
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     StatefulBuilder(
                        //       builder: (BuildContext context, setState) {
                        //         return RatingBar.builder(
                        //           itemSize: 20.r,
                        //           minRating: 1,
                        //           itemBuilder: (context, _) => const Icon(
                        //             Icons.star,
                        //             color: Colors.amber,
                        //           ),
                        //           onRatingUpdate: (rating) {
                        //             setState(() {});
                        //           },
                        //         );
                        //       },
                        //     ),
                        //     SizedBox(
                        //       width: 5.0.w,
                        //     ),
                        //
                        //   ],
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Expanded(
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 2.0.w),
            //     child: Row(
            //       children: [
            //         Expanded(
            //           flex: 1,
            //           child: GestureDetector(
            //             onTap: () {
            //               navigateTo(context, const InstructorCourseDetails());
            //             },
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Text(
            //                   'Edit',
            //                   style: TextStyle(
            //                     fontFamily: FontPath.poppinsMedium,
            //                     fontSize: 15.sp,
            //                     color: Colors.blue,
            //                   ),
            //                 ),
            //                 Image(
            //                   width: 25.w,
            //                   height: 25.h,
            //                   image: const AssetImage(
            //                     ImagePath.edit,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         Expanded(
            //           flex: 2,
            //           child: GestureDetector(
            //             onTap: () {
            //               navigateTo(context, const CourseStudentsScreen());
            //             },
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Text(
            //                   'Student',
            //                   style: TextStyle(
            //                     fontFamily: FontPath.poppinsMedium,
            //                     fontSize: 15.sp,
            //                     color: Colors.blue,
            //                   ),
            //                 ),
            //                 Image(
            //                   width: 25.w,
            //                   height: 25.h,
            //                   image: const AssetImage(
            //                     ImagePath.student,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //
            //         // Expanded(
            //         //   flex: 2,
            //         //   child: GestureDetector(
            //         //     onTap: () {},
            //         //     child: Row(
            //         //       mainAxisAlignment: MainAxisAlignment.center,
            //         //       children: [
            //         //         Text(
            //         //           'Community',
            //         //           style: TextStyle(
            //         //             fontFamily: FontPath.poppinsMedium,
            //         //             fontSize: 15.sp,
            //         //             color: Colors.blue,
            //         //           ),
            //         //         ),
            //         //         Image(
            //         //           width: 25.w,
            //         //           height: 25.h,
            //         //           image: const AssetImage(
            //         //             ImagePath.comunity,
            //         //           ),
            //         //         ),
            //         //       ],
            //         //     ),
            //         //   ),
            //         // ),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );

// important methods.
void navigateTo(context, Widget widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(BuildContext context, widget) =>
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => widget)
    );

void navigateAndDeleteAll(BuildContext context, Widget page) async {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
          (Route<dynamic> route) => false);
}

/// 1 2 3
/// 1 -> 2
/// Stack ::  6


String uid = 'zKiNeGjyj0amFpea9uNn';
PreferredSizeWidget defaultAppbar({
  required BuildContext context,
  String? title,
  List<Widget>? actions,
}) =>
    AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_left_outlined,
        ),
      ),
      titleSpacing: 5.0,
      title: Text(title!),
      actions: actions,
    );
Widget defaulttextbutton({
  required VoidCallback function,
  required String text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
      ),
    );


void showToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 2,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0,
    );

enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}