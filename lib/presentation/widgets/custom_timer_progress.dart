import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTimerProgress extends StatelessWidget {
  final int maxTime;
  final int minTime;
  final double containerWidth;
  final Color progressColor;
  final Color? backColor;
  final bool? isCourse;
  const CustomTimerProgress({
    super.key,
    required this.maxTime,
    required this.minTime,
    required this.containerWidth,
    required this.progressColor,
    this.backColor,
    this.isCourse = false,
  });
  @override
  Widget build(context) {
    return Stack(
      children: [
        Container(
          height: 6.h,
          width: double.infinity,
          color: backColor ?? Colors.grey.shade300,
        ),
        Container(
          height: 6.h,
          width: minTime == maxTime
              ? double.infinity
              : minTime < maxTime
                  ? (containerWidth * (minTime / maxTime)).w
                  : 1.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                isCourse! ? progressColor.withOpacity(0.4) : Colors.white54,
                progressColor,
              ],
              end: Alignment.centerRight,
              begin: Alignment.centerLeft,
            ),
          ),
        ),
      ],
    );
  }
}
