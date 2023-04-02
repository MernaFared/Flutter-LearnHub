import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/presentation/screens/on_boarding_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);
  static const String id = "Screen1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(ImagePath.welcome),
              ),
              SizedBox(
                height: 38.00.h,
              ),
              Center(
                child: Image.asset(ImagePath.getStart),
              ),
              SizedBox(
                height: 38.00.h,
              ),
              customElevatedButton(
                onPressed: () {
                  navigateTo(context, const OnBoardingScreen());
                },
                text: 'Get Started',
              )
            ],
          ),
        ),
      ),
    );
  }
}
