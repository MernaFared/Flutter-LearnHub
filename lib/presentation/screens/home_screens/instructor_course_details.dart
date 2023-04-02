import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class InstructorCourseDetails extends StatefulWidget {
  const InstructorCourseDetails({Key? key}) : super(key: key);
  static const String id = "InstructorCourseDetails";

  @override
  State<InstructorCourseDetails> createState() =>
      _InstructorCourseDetailsState();
}

class _InstructorCourseDetailsState extends State<InstructorCourseDetails> {
  @override
  bool isChecked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsetsDirectional.only(
            top: 20.h,
            start: 20.0.w,
            end: 20.0.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 170.0.h,
                  width: double.infinity.w,
                  child: Row(
                    children: [
                      Container(
                        width: 160.w,
                        height: 160.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage(
                              ImagePath.anatomy,
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                      SizedBox(
                        width: 20.00.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0.h),
                        child: Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'Edit Photo',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: FontPath.poppinsMedium,
                                  ),
                                ),
                                const Image(image: AssetImage(ImagePath.edit))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                Text(
                  'Intro to Studying Human Anatomy',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: FontPath.poppinsMedium,
                    fontSize: 16.sp,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Edit Name',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: FontPath.poppinsMedium,
                            fontSize: 15.sp,
                          ),
                        ),
                        const Image(image: AssetImage(ImagePath.edit))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Text(
                  'Section 1 - Introduction',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: FontPath.poppinsLight,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Add File',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: FontPath.poppinsMedium,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Add APK File',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: FontPath.poppinsMedium,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0.h,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to the Course',
                              style: TextStyle(
                                fontFamily: FontPath.poppinsRegular,
                                fontSize: 14.sp,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'video - 6:10 mins',
                              style: TextStyle(
                                fontFamily: FontPath.poppinsRegular,
                                fontSize: 14.sp,
                                color: AppColors.primaryButtonColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(10),
                          side: const BorderSide(
                            width: 3,
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
                  itemCount: 3,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Your service rating',
                  style: TextStyle(
                    fontFamily: FontPath.poppinsBold,
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    StatefulBuilder(
                      builder: (BuildContext context, setState) {
                        return RatingBar.builder(
                          itemSize: 40.r,
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
                      '5.0',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsMedium,
                        fontSize: 15.00.sp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Additional feedback',
                  style: TextStyle(
                    fontFamily: FontPath.poppinsBold,
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 310.w,
                  height: 168.h,
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.00.r)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 7.w, vertical: 10.h),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8.0.h, horizontal: 8.0.w),
                    child: TextField(
                      expands: true,
                      maxLines: null,
                      minLines: null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            'If you have any additional feedback, please type it in here...',
                        hintStyle: TextStyle(
                          fontFamily: FontPath.poppinsMedium,
                          fontSize: 16.sp,
                          color: AppColors.textAreaColor,
                        ),
                        hintMaxLines: 3,
                      ),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  children: [
                    StatefulBuilder(
                      builder: (BuildContext context, setState) {
                        return Transform.scale(
                          scale: 1.5.r,
                          child: Checkbox(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      child: Text(
                        'I have read and accept the Privacy Policy.',
                        style: TextStyle(
                          fontFamily: FontPath.poppinsMedium,
                          fontSize: 11.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0.h),
                  child: customSecondaryButton(
                    onPressed: () {},
                    color: AppColors.primaryButtonColor,
                    text: 'Submit feedback',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
