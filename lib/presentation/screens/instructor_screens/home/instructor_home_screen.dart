import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_theme/app_colors.dart';
import '../../../../core/assets_path/font_path.dart';
import '../../../../core/assets_path/images_path.dart';
import '../../../../logic/instructor/instructor cubit.dart';
import '../../../../models/instructor_course_model.dart';
import '../../../widgets/components.dart';

class InstructorHomeScreen extends StatefulWidget {
  const InstructorHomeScreen({Key? key}) : super(key: key);

  @override
  State<InstructorHomeScreen> createState() => _InstructorHomeScreenState();
}

class _InstructorHomeScreenState extends State<InstructorHomeScreen> {
  // List<InstructorCourseModel> instructorCourseModelList = [
  //   InstructorCourseModel(
  //     image: ImagePath.photography,
  //     text: 'Intro to Studying Human',
  //     rate: '0.4',
  //   ),
  //   InstructorCourseModel(
  //     image: ImagePath.anatomy,
  //     text: 'Medical Terminology',
  //     rate: '0.5',
  //   ),
  //   InstructorCourseModel(
  //     image: ImagePath.botany,
  //     text: 'Fundamentals',
  //     rate: '0.3',
  //   ),
  // ];


  @override
  Widget build(BuildContext context) {
    var cubit = InstructorCubit.get(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 20.h,
            end: 29.h,
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: [
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 14.00.h,
                    ),
                    Text(
                      'Hello,',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsLight,
                        fontSize: 30.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 42.0.w),
                      child: Text(
                        '${cubit.instructorDataModel!.firstName} ${cubit.instructorDataModel!.lastName}',
                        style: TextStyle(
                          fontFamily: FontPath.poppinsBold,
                          fontSize: 30.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 29.5.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Search your course...',
                              labelStyle: TextStyle(
                                fontFamily: FontPath.poppinsRegular,
                                fontSize: 18.00.sp,
                                color: AppColors.textTextFormFieldColor,
                              ),
                              prefixIcon: Image.asset(ImagePath.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: 36.79.w,
                            height: 50.19.h,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.5.r),
                                color: AppColors.primaryButtonColor,
                              ),
                              child: Image.asset(
                                ImagePath.menuBtn,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.00.h,
                    ),
                    Text(
                      'My Courses',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsBold,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.00.h,
                    ),
                    SizedBox(
                      width: double.infinity.w,
                      height: 450.h,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => instructorCourseItem(
                             cubit.inctructorcourses[index],
                            context
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 20.h,
                        ),
                        itemCount: cubit.inctructorcourses.length,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
