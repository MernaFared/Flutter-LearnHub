import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/models/enrolled_courses_model.dart';
import 'package:graduation_project/models/explore_course_model.dart';
import 'package:graduation_project/models/popular_course_model.dart';
// import 'package:graduation_project/models/recommendation_model.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details3.dart';
// import 'package:graduation_project/presentation/screens/home_screens/search1_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<PopularCoursesModel> popularCoursesModelList = [
    PopularCoursesModel(
      title: 'Test 1',
          lessonNumber: '15 lesson',
          rate: '0.3',
          image: ImagePath.anatomy,
    ),
    PopularCoursesModel(
      title: 'Test 2',
          lessonNumber: '20 lesson',
          rate: '0.5',
          image: ImagePath.music,
    ),
    PopularCoursesModel(
      title: 'Test 3',
      lessonNumber: '25 lesson',
      rate: '0.4',
      image: ImagePath.botany,
    ),
  ];

  // List<RecommendationModel> recommendationModelList = [
  //   RecommendationModel(
  //     title: 'Test 1',
  //     lessonNumber: '15 lesson',
  //     rate: '0.3',
  //     image: ImagePath.anatomy,
  //   ),
  //   RecommendationModel(
  //     title: 'Test 2',
  //     lessonNumber: '20 lesson',
  //     rate: '0.5',
  //     image: ImagePath.music,
  //   ),
  //   RecommendationModel(
  //     title: 'Test 3',
  //     lessonNumber: '25 lesson',
  //     rate: '0.4',
  //     image: ImagePath.botany,
  //   ),
  // ];

  List<EnrolledCoursesModel> enrolledCoursesModelList = [
    EnrolledCoursesModel(
      image: ImagePath.anatomy,
      startText: 'Ongoing',
      titleText: 'Computer Hardware',
      lessonsText: '5/17 Lessons',
      btnText: 'Continue',
    ),
    EnrolledCoursesModel(
      image: ImagePath.anatomy,
      startText: 'Ongoing',
      titleText: 'Computer Hardware',
      lessonsText: '5/17 Lessons',
      btnText: 'Continue',
    ),
    EnrolledCoursesModel(
      image: ImagePath.anatomy,
      startText: 'Ongoing',
      titleText: 'Computer Hardware',
      lessonsText: '5/17 Lessons',
      btnText: 'Continue',
    ),
    EnrolledCoursesModel(
      image: ImagePath.anatomy,
      startText: 'Ongoing',
      titleText: 'Computer Hardware',
      lessonsText: '5/17 Lessons',
      btnText: 'Continue',
    ),
  ];

  List<ExploreCourseModel> exploreCourseModelList = [
    ExploreCourseModel(
      image: ImagePath.anatomy,
      courseText: 'Cloud',
      lessonsText: '24/52 Lessons',
    ),
    ExploreCourseModel(
      image: ImagePath.programming,
      courseText: 'Data Structure ',
      lessonsText: '12/50 Lessons',
    ),
    ExploreCourseModel(
      image: ImagePath.botany,
      courseText: 'Botany',
      lessonsText: '3/49 Lessons',
    ),
    ExploreCourseModel(
      image: ImagePath.graphic,
      courseText: 'Graphic',
      lessonsText: '6/24 Lessons',
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
                      onTap: (){},
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 20.w,
            end: 29.w,
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0.h),
                  child: Align(
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
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(
                      builder: (context) =>
                          IconButton(
                            icon: Image.asset(ImagePath.menu),
                            onPressed: () => Scaffold.of(context).openDrawer(),
                          ),
                    ),
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
                        'Pela David',
                        style: TextStyle(
                          fontFamily: FontPath.poppinsBold,
                          fontSize: 30.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 29.5.h,
                    ),
                    Text(
                      'Recommendation Courses',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsBold,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 20.00.h,
                    ),
                    SizedBox(
                      width: double.infinity.w,
                      height: 188.00.h,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            popularCourseItem(
                                popularCoursesModelList[index],context),
                        separatorBuilder: (context, index) =>
                            SizedBox(
                              width: 10.0.w,
                            ),
                        itemCount: popularCoursesModelList.length,
                      ),
                    ),
                    SizedBox(
                      height: 25.00.h,
                    ),
                    Text(
                      'Explore your course',
                      style: TextStyle(
                        fontFamily: FontPath.poppinsBold,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 24.00.h,
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 17,
                      mainAxisSpacing: 28,
                      children: List.generate(
                        exploreCourseModelList.length,
                            (index) =>
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  navigateTo(context, const CourseDetails3());
                                });
                              },
                              child: exploreCourseItem(
                                  exploreCourseModelList[index]),
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 20.00.h,
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
