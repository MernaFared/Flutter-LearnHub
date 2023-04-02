import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
 class CustomTabBarButtonBuilder extends StatelessWidget {
  final String title;
  final int index;
  final int currentIndex;
  final Color activeBackgroundButtonColor;
  final Color activeForegroundButtonColor;
  final Color inactiveBackgroundButtonColor;
  final Color inactiveForegroundButtonColor;
  final Color activeTitleButtonColor;
  final Color inactiveTitleButtonColor;
  final void Function() onButtonTapped;
  final bool isInMarketsScreen;
  const CustomTabBarButtonBuilder(
      {Key? key,
        required this.title,
        required this.index,
        required this.activeBackgroundButtonColor,
        required this.activeForegroundButtonColor,
        required this.inactiveBackgroundButtonColor,
        required this.inactiveForegroundButtonColor,
        required this.activeTitleButtonColor,
        required this.inactiveTitleButtonColor,
        required this.currentIndex,
        required this.onButtonTapped,
        this.isInMarketsScreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: SizedBox(
        width: 60.0.w,
        height: 21.5.h,
        child: ElevatedButton(
          onPressed: onButtonTapped,
          style: ElevatedButton.styleFrom(
            elevation: isInMarketsScreen ? 1 : 0,
            padding: EdgeInsets.symmetric(
              horizontal: currentIndex == 0 ? 1.w : 3.00.w,
              vertical: currentIndex == 0 ? 1.h : 3.00.h,
            ),
            backgroundColor: currentIndex == index
                ? activeBackgroundButtonColor
                : inactiveBackgroundButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            foregroundColor: currentIndex == index
                ? activeForegroundButtonColor
                : inactiveForegroundButtonColor,
            side: BorderSide(
              color: isInMarketsScreen
                  ? const Color(0xffEBEBEB).withOpacity(0.9)
                  : currentIndex == index
                  ? activeBackgroundButtonColor
                  : inactiveBackgroundButtonColor,
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: currentIndex == index
                  ? activeTitleButtonColor
                  : inactiveTitleButtonColor,
              fontSize: 12.sp,
              fontFamily: FontPath.poppinsMedium,
            ),
          ),
        ),
      ),
    );
  }
}