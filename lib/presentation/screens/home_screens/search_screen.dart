import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/models/course_item_model.dart';
import 'package:graduation_project/models/popular_course_model.dart';
import 'package:graduation_project/presentation/screens/home_screens/notification_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/search1_screen.dart';
import 'package:graduation_project/presentation/screens/slide_bar_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  static const String id = "SearchScreen";
  // List<PopularCoursesModel> popularCoursesModelList = [
  //   PopularCoursesModel(
  //     image: ImagePath.anatomy,
  //     titleText: 'Computer Hardware',
  //     lessonsText: '5/17 Lessons',
  //     btnText: 'Enroll Now',
  //   ),
  //   PopularCoursesModel(
  //     image: ImagePath.music,
  //     titleText: 'React JS',
  //     lessonsText: '11/31 Lessons',
  //     btnText: 'Enroll Now',
  //   ),
  //   PopularCoursesModel(
  //     image: ImagePath.programming,
  //     titleText: 'CISCO Packet Tracer',
  //     lessonsText: '1/51 Lessons',
  //     btnText: 'Enroll Now',
  //   ),
  //   PopularCoursesModel(
  //     image: ImagePath.photography,
  //     titleText: 'Computer Hardware',
  //     lessonsText: '5/17 Lessons',
  //     btnText: 'Enroll Now',
  //   ),
  // ];
  List<CourseItemModel> courseItemModelList = [
    CourseItemModel(
      image: ImagePath.anatomy,
      title: 'Anatomy',
      lessonNumber: '52 Lessons',
      btnText: 'Enroll Now',
    ),
    CourseItemModel(
      image: ImagePath.photography,
      title: 'User Interface',
      lessonNumber: '30 Lessons',
      btnText: 'Enroll Now',
    ),
    CourseItemModel(
      image: ImagePath.music,
      title: 'User Interface',
      lessonNumber: '49 Lessons',
      btnText: 'Enroll Now',
    ),
    CourseItemModel(
      image: ImagePath.art,
      title: 'User Interface',
      lessonNumber: '52 Lessons',
      btnText: 'Enroll Now',
    ),
    CourseItemModel(
      image: ImagePath.anatomy,
      title: 'Anatomy',
      lessonNumber: '52 Lessons',
      btnText: 'Enroll Now',
    ),
    CourseItemModel(
      image: ImagePath.photography,
      title: 'User Interface',
      lessonNumber: '30 Lessons',
      btnText: 'Enroll Now',
    ),
    CourseItemModel(
      image: ImagePath.music,
      title: 'User Interface',
      lessonNumber: '49 Lessons',
      btnText: 'Enroll Now',
    ),
    CourseItemModel(
      image: ImagePath.art,
      title: 'User Interface',
      lessonNumber: '52 Lessons',
      btnText: 'Enroll Now',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      drawer: Drawer(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                EdgeInsetsDirectional.only(top: 35.0, start: 12, end: 12),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 180.00,
                        height: 170.00,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffD9D9D9),
                        ),
                        child: Center(
                          child: Image.asset(
                            width: 136.09,
                            height: 150.93,
                            ImagePath.slider,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        'Bella Almeida',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontPath.poppinsBold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.text_fields_sharp,
                          ),
                          SizedBox(width: 10.0,),
                          Text('Title',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_outline_sharp,
                          ),
                          SizedBox(width: 10.0,),
                          Text('My Courses',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),


                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings_outlined,
                          ),
                          SizedBox(width: 10.0,),
                          Text('Settings',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color:  Colors.black,

                          ),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(
                            Icons.warning_amber_rounded,

                          ),
                          SizedBox(width: 10.0,),
                          Text('Report Problem',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(
                            Icons.help_outline,

                          ),
                          SizedBox(width: 10.0,),
                          Text('Help',style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,


                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),



      ),

//
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0.h, vertical: 20.00.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      child: Builder(
                        builder: (context) => IconButton(
                          icon: Image.asset(ImagePath.menu),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'My Courses',
                          style: TextStyle(
                              fontFamily: FontPath.poppinsMedium,
                              fontSize: 18.0.sp),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Popular Courses',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: FontPath.poppinsBold,
                            color: AppColors.textCoursesMinColor,
                          ),
                        ),
                        SizedBox(
                          height: 37.00.h,
                        ),
                        // SizedBox(
                        //   width: double.infinity,
                        //   height: 165.00.h,
                        //   child: ListView.separated(
                        //     shrinkWrap: true,
                        //     physics: const BouncingScrollPhysics(),
                        //     scrollDirection: Axis.horizontal,
                        //     itemBuilder: (context, index) => popularCourseItem(
                        //         popularCoursesModelList[index]),
                        //     separatorBuilder: (context, index) => SizedBox(
                        //       width: 40.0.w,
                        //     ),
                        //     itemCount: popularCoursesModelList.length,
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 29.00.h,
                        // ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                onFieldSubmitted: (val) {
                                  navigateTo(context, Search1Screen());
                                },
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
                          height: 30.00.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'All Course',
                              style: TextStyle(
                                fontFamily: FontPath.poppinsBold,
                                fontSize: 18.sp,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'See All',
                                style: TextStyle(
                                  fontFamily: FontPath.poppinsRegular,
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          customCourseItem(courseItemModelList[index]),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 28.h,
                      ),
                      itemCount: courseItemModelList.length,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
