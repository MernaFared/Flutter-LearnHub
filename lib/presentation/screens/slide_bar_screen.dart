import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/models/slider_component_model.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class SliderBar extends StatelessWidget {
  SliderBar({Key? key}) : super(key: key);
  static const String id = "SliderBar";
  List<SliderModel> sliderModelList = [ //    sliderModellist اسم اليست
    SliderModel(
      title: 'title',
      iconData: Icons.star_outline_outlined,
    ),
    SliderModel(
      title: 'My Courses',
      iconData: Icons.person_outline_sharp,
    ),
    SliderModel(
      title: 'Settings',
      iconData: Icons.settings_outlined,
    ),
    SliderModel(
      title: 'Report Problem',
      iconData: Icons.warning_amber_rounded,
    ),
    SliderModel(
      title: 'Help',
      iconData: Icons.help_outline,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(top: 50.0, start: 20.w, end: 20.w),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200.00.w,
                  height: 200.00.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffD9D9D9),
                  ),
                  child: Center(
                    child: Image.asset(
                      width: 136.09.w,
                      height: 150.93.h,
                      ImagePath.slider,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Center(
                child: Text(
                  'Bella Almeida',
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontFamily: FontPath.poppinsBold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          sliderComponent(sliderModelList[index]),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 30.h,
                          ),
                      itemCount: sliderModelList.length)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Bella Almeida | 3IT-A',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: FontPath.poppinsLight,
                      color: Colors.black,
                    ),
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
