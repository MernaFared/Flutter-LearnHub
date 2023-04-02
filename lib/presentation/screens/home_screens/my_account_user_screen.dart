import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';
import 'package:graduation_project/core/assets_path/font_path.dart';
import 'package:graduation_project/core/assets_path/images_path.dart';
import 'package:graduation_project/models/settings_model.dart';
import 'package:graduation_project/presentation/screens/about_us_screen.dart';
import 'package:graduation_project/presentation/screens/home_screens/notification_screen.dart';
import 'package:graduation_project/presentation/screens/slide_bar_screen.dart';
import 'package:graduation_project/presentation/widgets/components.dart';

class MyAccountScreenUser extends StatefulWidget {
  MyAccountScreenUser({Key? key}) : super(key: key);
  static const String id = "MyAccountScreenUser";

  @override
  State<MyAccountScreenUser> createState() => _MyAccountScreenUserState();
}

class _MyAccountScreenUserState extends State<MyAccountScreenUser> {
  List<SettingsAccountModel> settingsAccountModelList = [
    SettingsAccountModel(
      title: 'General Information',
      textColor: Colors.black,
      iconColor: Colors.blue,
    ),
    SettingsAccountModel(
      title: 'Security',
      textColor: Colors.black,
      iconColor: Colors.blue,
    ),
    SettingsAccountModel(
      title: 'About Us',
      textColor: Colors.black,
      iconColor: Colors.blue,
    ),
    SettingsAccountModel(
      title: 'Close Account',
      textColor: Colors.red,
      iconColor: Colors.red,
    ),
    SettingsAccountModel(
      title: 'Upgrade Account',
      textColor: Colors.blue,
      iconColor: Colors.blue,
    ),
  ];
  int currentIndex = 0;

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
                          fontSize: 26,
                          fontFamily: FontPath.poppinsBold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.star_outline_outlined,
                ),
                title: Text('title',style: TextStyle(
                  fontSize: 15.0,

                ),),
                onTap: (){
                  print('title');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.person_outline_sharp,
                ),
                title: Text('My Courses',style: TextStyle(
                  fontSize: 15.0,
                ),),
                onTap: (){
                  print('My Courses');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings_outlined,
                ),
                title: Text('Settings',style: TextStyle(
                  fontSize: 15.0,
                ),),
                onTap: (){
                  print('Settings');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.warning_amber_rounded,
                ),
                title: Text('Report Problem',style: TextStyle(
                  fontSize: 15.0,
                ),),
                onTap: (){
                  print('Report Problem');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.warning_amber_rounded,
                ),
                title: Text('Report Problem',style: TextStyle(
                  fontSize: 15.0,
                ),),
                onTap: (){
                  print('Report Problem');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                ),
                title: Text('Help',style: TextStyle(
                  fontSize: 15.0,
                ),),
                onTap: (){
                  print('Help');
                },
              ),
            ],
          ),
        ),



      ),
//
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Image.asset(ImagePath.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Center(
          child: Text(
            'My Account',
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: FontPath.poppinsMedium,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.00.h,
              ),
              Container(
                width: double.infinity,
                height: 100.00.h,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor2,
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
                  borderRadius: BorderRadius.circular(10.00.r),
                ),
                child: Row(
                  children: [
                    Container(
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
                    SizedBox(
                      width: 20.0.w,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Pela David',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: FontPath.poppinsBold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'PelaDavid33@gmail.com',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: FontPath.poppinsMedium,
                              color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Update Photo',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: FontPath.poppinsBold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0.w,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: FontPath.poppinsBold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35.00.h,
              ),
              Text(
                'Settings',
                style: TextStyle(
                  fontSize: 23.sp,
                  fontFamily: FontPath.poppinsBold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.00.h,
              ),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => settingsAccountItem(
                      context, settingsAccountModelList[index], () {
                    navigateTo(context, const AboutUsScreen());
                  }),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20.h,
                  ),
                  itemCount: settingsAccountModelList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
