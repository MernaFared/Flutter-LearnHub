import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/models/category_model.dart';
import 'package:graduation_project/models/course_item_model.dart';
import 'package:graduation_project/presentation/screens/home_screens/course_details1.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class Search1Screen extends StatelessWidget {
  Search1Screen({Key? key}) : super(key: key);
  static const String id = "Search1Screen";
  List<CategoryModel> categoryModelList = [
    CategoryModel(title: 'Visual identiy'),
    CategoryModel(title: 'Painting'),
    CategoryModel(title: 'Coding'),
    CategoryModel(title: 'Writing'),
  ];
  List<CourseItemModel> courseItemModelList2 = [
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black,
            size: 30.00.r,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 20.0.h,
          left: 20.00.w,
          right: 20.00.w,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity.w,
                height: 50.0.h,
                decoration: BoxDecoration(
                  color: AppColors.searchTextForm,
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Product Design',
                    hintStyle: TextStyle(
                        fontFamily: FontPath.poppinsRegular,
                        fontSize: 14.00.sp,
                        color: Colors.black),
                    prefixIcon: Image.asset(
                      ImagePath.bottomSearch,
                      color: Colors.grey,
                    ),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.highlight_remove,
                            color: Colors.grey,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(ImagePath.menuBtn),
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.00.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 40.00.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => customCatItem(
                      categoryModelList[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 12.0.w,
                  ),
                  itemCount: categoryModelList.length,
                ),
              ),
              SizedBox(
                height: 30.00.h,
              ),
              Text(
                'Results',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: FontPath.poppinsBold,
                  color: AppColors.textCoursesMinColor,
                ),
              ),
              SizedBox(
                height: 5.00.h,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    customCourseItem2(courseItemModelList2[index], (){
                      navigateTo(context, CourseDetails1());
                    }),
                separatorBuilder: (context, index) => SizedBox(
                  height: 28.h,
                ),
                itemCount: courseItemModelList2.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

