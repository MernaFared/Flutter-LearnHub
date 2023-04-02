import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);
  static const String id = "NotificationScreen";
  bool isNotification = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
            fontFamily: FontPath.poppinsBold,
            color: Colors.black,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 5.0.h,
          horizontal: 5.0.w,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImagePath.notification),
                  ),
                ),
              ),
              isNotification == true
                  ? Column(
                      children: [
                        Container(
                          width: double.infinity.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.r,
                                      backgroundImage:
                                          const AssetImage(ImagePath.avatarNot),
                                    ),
                                    SizedBox(
                                      width: 20.0.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Daniel Lawson',
                                            style: TextStyle(
                                              fontFamily: FontPath.poppinsBold,
                                              fontSize: 12.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0.w,
                                          ),
                                          Text(
                                            'Online',
                                            style: TextStyle(
                                              fontFamily: FontPath.poppinsBold,
                                              fontSize: 12.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '04:32 pm',
                                      style: TextStyle(
                                        fontFamily: FontPath.poppinsRegular,
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(
                                  'Congratulations on completing the first lesson, keep up the good work!',
                                  style: TextStyle(
                                    fontFamily: FontPath.poppinsRegular,
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: double.infinity.w,
                          height: 320.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.r,
                                      backgroundImage:
                                          const AssetImage(ImagePath.avatarNot),
                                    ),
                                    SizedBox(
                                      width: 20.0.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Daniel Lawson',
                                            style: TextStyle(
                                              fontFamily: FontPath.poppinsBold,
                                              fontSize: 12.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0.w,
                                          ),
                                          Text(
                                            'Online',
                                            style: TextStyle(
                                              fontFamily: FontPath.poppinsBold,
                                              fontSize: 12.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '04:32 pm',
                                      style: TextStyle(
                                        fontFamily: FontPath.poppinsRegular,
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(
                                  'Congratulations on completing the first lesson, keep up the good work!',
                                  style: TextStyle(
                                    fontFamily: FontPath.poppinsRegular,
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Container(
                                  width: double.infinity.w,
                                  height: 150.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          ImagePath.programming,
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: double.infinity.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.r,
                                      backgroundImage:
                                          const AssetImage(ImagePath.avatarNot),
                                    ),
                                    SizedBox(
                                      width: 20.0.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Daniel Lawson',
                                            style: TextStyle(
                                              fontFamily: FontPath.poppinsBold,
                                              fontSize: 12.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0.w,
                                          ),
                                          Text(
                                            'Online',
                                            style: TextStyle(
                                              fontFamily: FontPath.poppinsBold,
                                              fontSize: 12.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '04:32 pm',
                                      style: TextStyle(
                                        fontFamily: FontPath.poppinsRegular,
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(
                                  'Congratulations on completing the first lesson, keep up the good work!',
                                  style: TextStyle(
                                    fontFamily: FontPath.poppinsRegular,
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: double.infinity.w,
                          height: 320.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.r,
                                      backgroundImage:
                                          const AssetImage(ImagePath.avatarNot),
                                    ),
                                    SizedBox(
                                      width: 20.0.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Daniel Lawson',
                                            style: TextStyle(
                                              fontFamily: FontPath.poppinsBold,
                                              fontSize: 12.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0.w,
                                          ),
                                          Text(
                                            'Online',
                                            style: TextStyle(
                                              fontFamily: FontPath.poppinsBold,
                                              fontSize: 12.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '04:32 pm',
                                      style: TextStyle(
                                        fontFamily: FontPath.poppinsRegular,
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(
                                  'Congratulations on completing the first lesson, keep up the good work!',
                                  style: TextStyle(
                                    fontFamily: FontPath.poppinsRegular,
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Container(
                                  width: double.infinity.w,
                                  height: 150.h,
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
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.0.w,
                        vertical: 80.h,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'No notification, yet!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: FontPath.poppinsBold,
                              fontSize: 30.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 15.0.w,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: FontPath.poppinsRegular,
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
