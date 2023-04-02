import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/presentation/screens/screen1.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class CourseDetails3 extends StatefulWidget {
  const CourseDetails3({Key? key}) : super(key: key);
  static const String id = "CourseDetails3";

  @override
  State<CourseDetails3> createState() => _CourseDetails3State();
}

class _CourseDetails3State extends State<CourseDetails3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: AppColors.primaryButtonColor,
            size: 30.00.r,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
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
            Row(
              children: [
                Text(
                  'Instructor | Nail Fontaine ',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: FontPath.poppinsLight,
                    color: AppColors.primaryButtonColor,
                  ),
                ),
                const Spacer(),
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
                  '5.0',
                  style: TextStyle(
                    fontFamily: FontPath.poppinsMedium,
                    fontSize: 15.00.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Text(
              'Anatomy',
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: FontPath.poppinsBold,
                color: Colors.black,
              ),
            ),
            Text(
              '6h 14min · 24 Lessons',
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: FontPath.poppinsRegular,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'About this course',
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: FontPath.poppinsBold,
                color: Colors.black,
              ),
            ),
            Text(
              'Take your idea from concept to creation! No design experience needed!',
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: FontPath.poppinsRegular,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
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
                            '6:10 mins',
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
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            navigateTo(context, Screen1());
                          });
                        },
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 25.00.h,
                ),
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
